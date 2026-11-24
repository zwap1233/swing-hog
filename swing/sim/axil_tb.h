#include <stdint.h>

#include "testbench.h"

enum AXI_RESP { AXI_OKAY = 0b00, AXI_SLVERR = 0b10, AXI_DECERR = 0b11 };

template <class VT>
class axil_tb : public testbench<VT> {
   private:
	enum r_state { R_ADDR, R_DATA, R_DONE, R_EXIT };
	enum w_state { W_ADDR_DATA, W_ADDR, W_DATA, W_RESP, W_DONE, W_EXIT };

	void write_state_machine(w_state& current_state) {
		w_state next_state;

		switch (current_state) {
			case W_ADDR_DATA:
				this->core->s00_axi_awvalid = 1;
				this->core->s00_axi_wvalid = 1;
				this->core->s00_axi_bready = 1;

				if (this->core->s00_axi_awready && this->core->s00_axi_wready)
					next_state = W_RESP;
				else if (this->core->s00_axi_awready)
					next_state = W_DATA;
				else if (this->core->s00_axi_wready)
					next_state = W_ADDR;
				else
					next_state = W_ADDR_DATA;
				break;
			case W_ADDR:
				this->core->s00_axi_awvalid = 1;
				this->core->s00_axi_wvalid = 0;
				if (this->core->s00_axi_awready)
					next_state = W_RESP;
				else
					next_state = W_ADDR;
				break;
			case W_DATA:
				this->core->s00_axi_awvalid = 0;
				this->core->s00_axi_wvalid = 1;
				if (this->core->s00_axi_wready)
					next_state = W_RESP;
				else
					next_state = W_DATA;
				break;
			case W_RESP:
				this->core->s00_axi_awvalid = 0;
				this->core->s00_axi_wvalid = 0;
				this->core->s00_axi_bready = 1;
				if (this->core->s00_axi_bvalid == 1) next_state = W_DONE;
				break;
			case W_DONE:
				this->core->s00_axi_bready = 0;
				next_state = W_EXIT;
			case W_EXIT:
				next_state = W_EXIT;
		}

		current_state = next_state;
	}

	void read_state_machine(r_state& current_state) {
		r_state next_state;

		switch (current_state) {
			case R_ADDR:
				this->core->s00_axi_arvalid = 1;
				this->core->s00_axi_rready = 1;

				if (this->core->s00_axi_arready)
					next_state = R_DATA;
				else
					next_state = R_ADDR;
				break;
			case R_DATA:
				this->core->s00_axi_rready = 1;
				this->core->s00_axi_arvalid = 0;

				if (this->core->s00_axi_rvalid)
					next_state = R_DONE;
				else
					next_state = R_DATA;
				break;
			case R_DONE:
				this->core->s00_axi_rready = 0;
				next_state = R_EXIT;
			case R_EXIT:
				next_state = R_EXIT;
		}

		current_state = next_state;
	}

   public:
	using testbench<VT>::testbench;

	uint32_t write(uint32_t addr, uint32_t data, uint8_t wstrb = 0xf) {
		uint32_t resp;

		w_state current_state = W_ADDR_DATA;

		int i = 0;
		while (true) {
			this->core->s00_axi_awaddr = addr;
			this->core->s00_axi_wdata = data;
			this->core->s00_axi_wstrb = wstrb;

			write_state_machine(current_state);

			if (current_state == W_DONE) resp = this->core->s00_axi_bresp;
			if (current_state == W_EXIT) break;

			this->tick();

			if (i++ >= 20) {
				printf("Error axi write timeout\n");
				break;
			}
		}

		return resp;
	}

	void write_buf(const uint32_t addr, const uint32_t* data, const uint32_t len, uint8_t* wstrb = nullptr) {
		if (wstrb != nullptr)
			for (int i = 0; i < len; i++) write(addr + i * 4, data[i], wstrb[i]);
		else
			for (int i = 0; i < len; i++) write(addr + i * 4, data[i]);
	}

	uint32_t read(uint32_t addr) {
		uint32_t data;

		r_state current_state = R_ADDR;

		int i = 0;
		while (true) {
			this->core->s00_axi_araddr = addr;

			read_state_machine(current_state);

			if (current_state == R_DONE) data = this->core->s00_axi_rdata;
			if (current_state == R_EXIT) break;

			this->tick();

			if (i++ >= 20) {
				printf("Error axi read timeout\n");
				break;
			}
		}

		return data;
	}

	void read_buf(const uint32_t addr, uint32_t* data, const uint32_t len) {
		for (int i = 0; i < len; i++) {
			data[i] = read(addr + i * 4);
		}
	}

	void readAndWrite(uint32_t r_addr, uint32_t w_addr, uint32_t& r_data, uint32_t w_data, uint8_t wstrb = 0xf) {
		w_state write_state = W_ADDR_DATA;
		r_state read_state = R_ADDR;

		bool w_done = false, r_done = false;
		int i = 0;

		while (!w_done && !r_done) {
			this->core->s00_axi_araddr = r_addr;

			this->core->s00_axi_awaddr = w_addr;
			this->core->s00_axi_wdata = w_data;
			this->core->s00_axi_wstrb = wstrb;

			write_state_machine(write_state);

			if (write_state == W_EXIT) w_done = true;

			read_state_machine(read_state);

			if (read_state == R_DONE) r_data = this->core->s00_axi_rdata;
			if (read_state == R_EXIT) r_done = true;

			if(w_done && r_done) break;

			this->tick();

			if (i++ >= 20) {
				printf("Error axi write timeout\n");
				break;
			}
		}
	}

	void readAndWrite_buf(const uint32_t r_addr, uint32_t w_addr, uint32_t* r_data, uint32_t* w_data, const uint32_t len) {
		for (int i = 0; i < len; i++) {
			readAndWrite(r_addr + 4 * i, w_addr + 4 * i, r_data[i], w_data[i]);
		}
	}

	void readAndWriteConflict(uint32_t r_addr, uint32_t w_addr, uint32_t& r_data, uint32_t w_data, uint8_t wstrb = 0xf) {
		w_state write_state = W_ADDR_DATA;
		r_state read_state = R_ADDR;

		bool w_done = false, r_done = false;
		int i = 0;

		while (!w_done || !r_done) {
			this->core->s00_axi_araddr = r_addr;

			this->core->s00_axi_awaddr = w_addr;
			this->core->s00_axi_wdata = w_data;
			this->core->s00_axi_wstrb = wstrb;

			write_state_machine(write_state);

			if (write_state == W_EXIT) w_done = true;

			if (i != 0) {
				// skip the first tick for the read interface so the read and write channels both try to write to bram at the same time and come into conflict.
				read_state_machine(read_state);

				if (read_state == R_DONE) r_data = this->core->s00_axi_rdata;
				if (read_state == R_EXIT) r_done = true;
			}

			if(w_done && r_done) break;

			this->tick();

			i++;

			if (i > 20) {
				printf("Error axi write timeout\n");
				break;
			}
		}
	}

	void readAndWriteConflict_buf(const uint32_t r_addr, uint32_t w_addr, uint32_t* r_data, uint32_t* w_data, const uint32_t len) {
		for (int i = 0; i < len; i++) {
			readAndWriteConflict(r_addr + 4 * i, w_addr + 4 * i, r_data[i], w_data[i]);
		}
	}
};

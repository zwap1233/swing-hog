#include <stdint.h>

#include "testbench.h"

enum AXI_RESP { AXI_OKAY = 0b00, AXI_SLVERR = 0b10, AXI_DECERR = 0b11 };

template <class VT>
class axil_tb : public testbench<VT> {
   public:
	using testbench<VT>::testbench;

	void write_buf(const uint32_t addr, const uint32_t* data, const uint32_t len, uint8_t* wstrb = nullptr) {
		for (int i = 0; i < len; i++) write(addr + i, data[i], wstrb);
	};

	uint32_t write(uint32_t addr, uint32_t data, uint8_t* wstrb = nullptr) {
		printf("Writing 0x%x to 0x%x\n", data, addr);
		/* The Master puts an address on the Write Address channel and data on the
		 * Write data channel. At the same time it asserts AWVALID and WVALID
		 * indicating the address and data on the respective channels is valid.
		 * BREADY is also asserted by the Master, indicating it is ready to receive
		 * a response. */
		this->core->s00_axi_awaddr = addr;
		this->core->s00_axi_wdata = data;
		this->core->s00_axi_wstrb = 0xf;  // make sure to set strobe
		this->core->s00_axi_awvalid = 1;
		this->core->s00_axi_wvalid = 1;
		this->core->s00_axi_bready = 1;
		this->core->eval();

		/* NOTE: The Handshakes on the Write Address and Write Data channel do not
		 * neccessarily occur simultaneously (as they do in the shown transaction).
		 * However, the AXI4 specification states that both must occur before the
		 * slave can send a write reponse. Both Write Address and Write Data
		 * handshakes can occur independently or simultaneously and no order is
		 * enforced, only that both must occur to complete the transaction.*/

		bool aw_transfered = false, w_transfered = false;
		int ticks = 0;
		/* The Slave asserts AWREADY and WREADY on the Write Address and Write Data
		 * channels, respectively. */
		while (!aw_transfered && !w_transfered) {
			uint32_t wvalid_tmp = (this->core->s00_axi_wready != 1);  // evaluates to 1 if wready is still 0
			uint32_t awvalid_tmp = (this->core->s00_axi_awready != 1);

			this->tick();  // let a tick pass if either wready or awready was 1 then
						   // deassert wvalid and or awvalid
			ticks++;
			if (ticks >= 10) {
				printf("Timedout writing\n");
				return AXI_SLVERR;
			}
			/* Since Valid and Ready signals are present on both the Write Address
			 * and Write Data channels, the handshakes on those channels occur and
			 * the associated Valid and Ready signals can be deasserted. (After both
			 * handshakes occur, the slave has the write address and data) */

			printf("Waiting for wready: 0x%x and awready: 0x%x\n", this->core->s00_axi_wready, this->core->s00_axi_awready);

			aw_transfered = awvalid_tmp ? false : true;
			w_transfered = wvalid_tmp ? false : true;

			this->core->s00_axi_awvalid = awvalid_tmp;
			this->core->s00_axi_wvalid = wvalid_tmp;
		}

		/* The Slave asserts BVALID, indicating there is a valid reponse on the
		 * Write response channel. (in this case the response is 2’b00, that being
		 * ‘OKAY’).*/
		this->core->eval();
		printf("Waiting for bvalid\n");
		bool res = this->wait([](VT* core) -> bool { return core->s00_axi_bvalid == 1; });
		if(!res){
			printf("Waiting for arready timedout\n");
			return 0x0;
		}

		uint32_t resp = this->core->s00_axi_bresp;
		this->tick();  // response is now transfered
		this->core->s00_axi_bvalid = 0;

		printf("Finished write\n");

		return resp;
	}

	void read_buf(const uint32_t addr, uint32_t* data, const uint32_t len) {
		for (int i = 0; i < len; i++) {
			data[i] = read(addr + i);
		}
	}

	uint32_t read(uint32_t addr) {
		printf("Reading from 0x%x\n", addr);
		/* The Master puts an address on the Read Address channel as well as
		 * asserting ARVALID, indicating the address is valid, and RREADY,
		 * indicating the master is ready to receive data from the slave. */
		this->core->s00_axi_araddr = addr;
		this->core->s00_axi_arvalid = 1;
		this->core->s00_axi_rready = 1;

		// The Slave asserts ARREADY, indicating that it is ready to receive the
		// address on the bus
		this->core->eval();
		bool res = this->wait([](VT* core) -> bool { return core->s00_axi_arready == 1; });
		if(!res){
			printf("Waiting for arready timedout\n");
			return 0x0;
		}


		/* Since both ARVALID and ARREADY are asserted, on the next rising clock
		 * edge the handshake occurs, after this the master and slave deassert
		 * ARVALID and the ARREADY, respectively. (At this point, the slave has
		 * received the requested address). */
		this->tick();  // in this clock cycle the data is actually transferred.
		this->core->s00_axi_arvalid = 0;

		/* The Slave puts the requested data on the Read Data channel and asserts
		 * RVALID, indicating the data in the channel is valid. The slave can also
		 * put a response on RRESP, though this does not occur here.*/
		res = this->wait([](VT* core) -> bool { return core->s00_axi_rvalid == 1; });
		if(!res){
			printf("Waiting for rvalid timedout\n");
			return 0x0;
		}

		/* Since both RREADY and RVALID are asserted, the next rising clock edge
		 * completes the transaction. RREADY and RVALID can now be deasserted.*/
		uint32_t data = this->core->s00_axi_rdata;
		this->tick();  // data transfer
		this->core->s00_axi_rready = 0;

		return data;
	}
};

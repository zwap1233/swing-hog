#include <stdint.h>

#include "testbench.h"

/* NOTE: A burst is a address transfer followed by a series of beats which is a single word or part of a word transfered with XVALID and XREADY signals */

enum AXI_BURST_TYPE { AXI_FIXED = 0b00, AXI_INCR = 0b01, AXI_WRAP = 0b10 };

enum AXI_RESP { AXI_OKAY = 0b00, AXI_EXOKAY = 0b01, AXI_SLVERR = 0b10, AXI_DECERR = 0b11 };

typedef struct {
	uint8_t burst_type;
	uint8_t wstrb;
} axi_transfer_config_t;

template <class VT>
class axi_tb : public testbench<VT> {
   public:
	using testbench<VT>::testbench;

	uint32_t write(const uint32_t addr, const uint32_t* data, const uint32_t len, const uint8_t burst_type = AXI_INCR, const uint8_t* wstrb = nullptr) {
		if (len < 1) return AXI_DECERR;

		// Write address and general setup
		this->core->s00_axi_awaddr = addr;
		this->core->s00_axi_awburst = burst_type;
		this->core->s00_axi_awlen = len - 1;
		this->core->s00_axi_awsize = 0x2;  // 4 bytes is data bus width
		this->core->s00_axi_awvalid = 1;   // aw data valid

		this->core->s00_axi_wdata = data[0];
		this->core->s00_axi_wstrb = (wstrb != nullptr) ? wstrb[0] : 0xf;
		this->core->s00_axi_wlast = (len == 1);	 // set to 1 if the transaction is only one beat long
		this->core->s00_axi_wvalid = 1;

		this->core->s00_axi_bready = 1;	 // we are ready for the reponse, the respone is only send when the transaction is complete

		while (true) {
			uint32_t wvalid_tmp = (this->core->s00_axi_wready != 1);  // evaluates to 1 if wready is still 0
			uint32_t awvalid_tmp = (this->core->s00_axi_awready != 1);

			this->tick();  // either the tranfer is being completed here or we need to wait for it to be completed next cycle

			this->core->s00_axi_awvalid = awvalid_tmp;
			this->core->s00_axi_wvalid = wvalid_tmp;
			this->core->s00_axi_wlast = (len == 1 && wvalid_tmp);  // set wlast low with wvalid if it was high to begin with

			if (awvalid_tmp == 0 && wvalid_tmp == 0) break;	 // the beat and the address were transferred
		}

		for (int i = 1; i < len; i++) {
			this->core->s00_axi_wdata = data[i];
			this->core->s00_axi_wstrb = (wstrb != nullptr) ? wstrb[i] : 0xf;
			this->core->s00_axi_wlast = (i == (len - 1));  // evaluates to 1 if it is the last beat
			this->core->s00_axi_wvalid = 1;

			while (this->core->s00_axi_wready != 1) this->tick();

			this->tick();

			this->core->s00_axi_wvalid = 0;
			this->core->s00_axi_wlast = 0;
		}

		while (this->core->s00_axi_bvalid != 1) this->tick();

		uint32_t resp = this->core->s00_axi_bresp;
		this->core->s00_axi_bready = 0;

		return resp;
	}

	void read(const uint32_t addr, uint32_t* data, const uint32_t len, const uint8_t burst_type = AXI_INCR, uint8_t* resp = nullptr) {
		this->core->s00_axi_araddr = addr;
		this->core->s00_axi_arburst = burst_type;
		this->core->s00_axi_arlen = len - 1;
		this->core->s00_axi_arsize = 0x2;
		this->core->s00_axi_arvalid = 1;

		// complete the address handshake first before raising rready to make the code a little simpler
		while (this->core->s00_axi_arready != 1) this->tick();
		this->tick();
		this->core->s00_axi_arvalid = 0;

		this->core->s00_axi_rready = 1;	 // now we can continue

		for (int i = 0; i < len; i++) {
			while (this->core->s00_axi_rvalid != 1) this->tick();

			if (resp != nullptr) resp[i] = this->core->s00_axi_rresp;

			data[i] = this->core->s00_axi_rdata;

			bool is_last = (this->core->s00_axi_rlast == 1);

			this->tick();

			if (is_last) this->core->s00_axi_rready = 0;
		}
	}
};

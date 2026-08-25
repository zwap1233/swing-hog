#include <stdint.h>

#include "testbench.h"
#include "Vaxi_top.h"

/* NOTE: A burst is a address transfer followed by a series of beats which is a single word or part of a word transfered with XVALID and XREADY signals */

enum AXI_BURST_TYPE {
	AXI_FIXED = 0b00,
	AXI_INCR = 0b01,
	AXI_WRAP = 0b10
};

enum AXI_RESP {
	AXI_OKAY = 0b00,
	AXI_EXOKAY = 0b01,
	AXI_SLVERR = 0b10,
	AXI_DECERR = 0b11
};

//template<class VT>
class axi_tb: public testbench<Vaxi_top> {
   public:
	using testbench<Vaxi_top>::testbench;

	// TODO: check axi specs and walk through this, it is missing several parts like id.
	uint32_t write(uint32_t addr, uint32_t data){
		this->core->s00_axi_awaddr = addr; //set the addr to be written to
		this->core->s00_axi_awvalid = 1; //the address is ready
		
		this->core->s00_axi_wdata = data; //the data to be written
		this->core->s00_axi_wvalid = 1; //write data is valid
		this->core->s00_axi_wstrb = 0xf; //write all data, the whole word

		this->core->s00_axi_wlast = 1; //this is the last and only beat in this transaction

		this->core->s00_axi_bready = 1; //we can already receive the response

		while (this->core->s00_axi_awready != 1 || this->core->s00_axi_wready != 1) {
			uint32_t wvalid_tmp = (this->core->s00_axi_wready != 1);  // evaluates to 1 if wready is still 0
			uint32_t awvalid_tmp = (this->core->s00_axi_awready != 1);

			this->tick();  // let a tick pass if either wready or awready was 1 then
						   // deassert wvalid and or awvalid

			/* Since Valid and Ready signals are present on both the Write Address
			 * and Write Data channels, the handshakes on those channels occur and
			 * the associated Valid and Ready signals can be deasserted. (After both
			 * handshakes occur, the slave has the write address and data) */

			this->core->s00_axi_awvalid = awvalid_tmp;
			this->core->s00_axi_wvalid = wvalid_tmp;
			this->core->s00_axi_wlast = wvalid_tmp; //when wvalid is high wlast also needs to be high because this is the last and only beat
		}

		this->core->eval();
		while (this->core->s00_axi_bvalid != 1) this->tick();

		uint32_t resp = this->core->s00_axi_bresp;
		this->tick();  // response is now transfered
		this->core->s00_axi_bvalid = 0;

		return resp;
	}
	
	// NOTE: read transactions return a response every beat, in this function we igonre it for now.
	uint32_t read(uint32_t addr) {
		/* Set the address and set arvalid, we are also able to imediatly process the read data so we set rready to.
		 * The slave cant assert rvalid before arvalid and arready (ie the address read handshake has been completed)*/
		this->core->s00_axi_araddr = addr;
		this->core->s00_axi_arvalid = 1;
		this->core->s00_axi_rready = 1;

		// rlast is driven by the slave, but we already know this will be only one beat long.

		this->core->s00_axi_arlen = 0; //We are only transferring 1 beat
		this->core->s00_axi_arsize = 0x2; //2 = 4 bytes in a transfer. This cant exceed the width of the data bus.
		this->core->s00_axi_arburst = AXI_FIXED; //This doesnt really matter because there is only one beat.

		// The Slave asserts ARREADY, indicating that it is ready to receive the
		// address on the bus, the slave needs to wait for the addr handshake to complete before it can raise rvalid, so there is no need to worry about receiving read data this clk cycle.
		this->core->eval();
		while (this->core->s00_axi_arready != 1) this->tick();	// wait until the slave is ready

		/* Since both ARVALID and ARREADY are asserted, on the next rising clock
		 * edge the handshake occurs, after this the master and slave deassert
		 * ARVALID and the ARREADY, respectively. (At this point, the slave has
		 * received the requested address). */
		this->tick();	 // in this clock cycle the data is actually transferred.
		this->core->s00_axi_arvalid = 0;

		/* The Slave puts the requested data on the Read Data channel and asserts
		 * RVALID, indicating the data in the channel is valid. The slave can also
		 * put a response on RRESP, though this does not occur here.*/
		while (this->core->s00_axi_rvalid != 1) this->tick();  // wait until read data is valid

		/* Since both RREADY and RVALID are asserted, the next rising clock edge
		 * completes the transaction. RREADY and RVALID can now be deasserted.*/
		uint32_t data = this->core->s00_axi_rdata;
		this->tick();	 // data transfer
		this->core->s00_axi_rready = 0;

		return data;
	}

};



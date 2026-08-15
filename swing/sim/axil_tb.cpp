#include "axil_tb.h"

#include <cstdint>

#include "Vcore.h"

uint32_t axil_tb::write(uint32_t addr, uint32_t data) {
	/* The Master puts an address on the Write Address channel and data on the
	 * Write data channel. At the same time it asserts AWVALID and WVALID
	 * indicating the address and data on the respective channels is valid.
	 * BREADY is also asserted by the Master, indicating it is ready to receive
	 * a response. */
	core->s00_axi_awaddr = addr;
	core->s00_axi_wdata = data;
	core->s00_axi_wstrb = 0xf; //make sure to set strobe
	core->s00_axi_awvalid = 1;
	core->s00_axi_wvalid = 1;
	core->s00_axi_bready = 1;
	core->eval();

	/* NOTE: The Handshakes on the Write Address and Write Data channel do not
	 * neccessarily occur simultaneously (as they do in the shown transaction).
	 * However, the AXI4 specification states that both must occur before the
	 * slave can send a write reponse. Both Write Address and Write Data
	 * handshakes can occur independently or simultaneously and no order is
	 * enforced, only that both must occur to complete the transaction.*/

	/* The Slave asserts AWREADY and WREADY on the Write Address and Write Data
	 * channels, respectively. */
	while (core->s00_axi_awready != 1 || core->s00_axi_wready != 1) {
		uint32_t wvalid_tmp = (core->s00_axi_wready != 1);	// evaluates to 1 if wready is still 0
		uint32_t awvalid_tmp = (core->s00_axi_awready != 1);

		tick();	 // let a tick pass if either wready or awready was 1 then
				 // deassert wvalid and or awvalid

		/* Since Valid and Ready signals are present on both the Write Address
		 * and Write Data channels, the handshakes on those channels occur and
		 * the associated Valid and Ready signals can be deasserted. (After both
		 * handshakes occur, the slave has the write address and data) */

		core->s00_axi_awvalid = awvalid_tmp;
		core->s00_axi_wvalid = wvalid_tmp;
	}

	/* The Slave asserts BVALID, indicating there is a valid reponse on the
	 * Write response channel. (in this case the response is 2’b00, that being
	 * ‘OKAY’).*/
	core->eval();
	while (core->s00_axi_bvalid != 1) tick();

	uint32_t resp = core->s00_axi_bresp;
	tick();	 // response is now transfered
	core->s00_axi_bvalid = 0;

	return resp;
}

uint32_t axil_tb::read(uint32_t addr) {
	/* The Master puts an address on the Read Address channel as well as
	 * asserting ARVALID, indicating the address is valid, and RREADY,
	 * indicating the master is ready to receive data from the slave. */
	core->s00_axi_araddr = addr;
	core->s00_axi_arvalid = 1;
	core->s00_axi_rready = 1;

	// The Slave asserts ARREADY, indicating that it is ready to receive the
	// address on the bus
	core->eval();
	while (core->s00_axi_arready != 1) tick();	// wait until the slave is ready

	/* Since both ARVALID and ARREADY are asserted, on the next rising clock
	 * edge the handshake occurs, after this the master and slave deassert
	 * ARVALID and the ARREADY, respectively. (At this point, the slave has
	 * received the requested address). */
	tick();	 // in this clock cycle the data is actually transferred.
	core->s00_axi_arvalid = 0;

	/* The Slave puts the requested data on the Read Data channel and asserts
	 * RVALID, indicating the data in the channel is valid. The slave can also
	 * put a response on RRESP, though this does not occur here.*/
	while (core->s00_axi_rvalid != 1) tick();  // wait until read data is valid

	/* Since both RREADY and RVALID are asserted, the next rising clock edge
	 * completes the transaction. RREADY and RVALID can now be deasserted.*/
	uint32_t data = core->s00_axi_rdata;
	tick();	 // data transfer
	core->s00_axi_rready = 0;

	return data;
}

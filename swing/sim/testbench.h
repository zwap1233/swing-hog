#include <stdint.h>
#include <stdio.h>
#include <verilated_vcd_c.h>

template <class VT>
class testbench {
   protected:
	VT* core;
	VerilatedVcdC* trace;

	const uint64_t clock_period = 10000;
	uint64_t time_ps = 0;

   public:
	testbench() : testbench(10000) {}
	testbench(uint64_t clock_period) : clock_period(clock_period) {
		printf("Starting testbench..\n");

		core = new VT();
		trace = new VerilatedVcdC;

		core->trace(trace, 99);
		trace->spTrace()->set_time_resolution("ps");
		trace->spTrace()->set_time_unit("ps");
		trace->open("trace.vcd");

		core->eval();  // eval and capture initial values
		trace->dump(0);
		trace->flush();

		core->s00_axi_aresetn = 1;	// reset is active low, so set it high to turn the bus on
	}

	void tick() {
		core->eval();
		trace->dump(time_ps + clock_period / 4);

		core->s00_axi_aclk = 1;
		core->eval();
		trace->dump(time_ps + clock_period / 2);
		core->s00_axi_aclk = 0;
		core->eval();
		trace->dump(time_ps + clock_period);

		trace->flush();

		time_ps += clock_period;
	}

	void reset() {
		core->s00_axi_aresetn = 0;
		tick();
		core->s00_axi_aresetn = 1;
	}

	void close() {
		trace->close();
		core->close();

		delete trace;
		delete core;
	}
};

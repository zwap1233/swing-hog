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
		
		core->s00_axi_aclk = 1; //start with high clock

		reset(); //reset the chip to have a good start
	}

	void tick() {
		core->eval();
		trace->dump(time_ps + clock_period / 16);

		core->s00_axi_aclk = 0;
		core->eval();
		trace->dump(time_ps + clock_period / 2);
		core->s00_axi_aclk = 1;
		core->eval();
		trace->dump(time_ps + clock_period);

		trace->flush();

		time_ps += clock_period;
	}
	
	/**
	 * Wait until 'comp' returns true, for 'timeout' ticks, returns false if timed out
	 */
	bool wait(std::function<bool(VT* core)> comp, int timeout = 10) {
		int t = 0;

		while(!comp(core)){
			tick();
			t++;

			if(t >= timeout)
				return false;
		}

		return true;
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

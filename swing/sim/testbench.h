#include <stdint.h>

#include "Vcore.h"

class testbench {
  protected:
	Vcore *core;

  public:
	testbench(Vcore *core) : core(core) {}

	void tick() {
		core->eval();
		core->s00_axi_aclk = 1;
		core->eval();
		core->s00_axi_aclk = 0;
		core->eval();
	}

	void reset() {
		core->s00_axi_aresetn = 0;
		tick();
		core->s00_axi_aresetn = 1;
	}
};

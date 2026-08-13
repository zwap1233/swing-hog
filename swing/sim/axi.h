#include <stdint.h>

#include "Vcore.h"
#include "testbench.h"

class axil : public testbench {
  public:
	using testbench::testbench;

	void write(uint32_t addr, uint32_t data) {}

	uint32_t read(uint32_t addr) {}
};

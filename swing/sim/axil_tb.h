#include <stdint.h>

#include "testbench.h"
#include "Vcore.h"

class axil_tb : public testbench<Vcore> {
   public:
	using testbench::testbench;

	uint32_t write(uint32_t addr, uint32_t data);

	uint32_t read(uint32_t addr);
};

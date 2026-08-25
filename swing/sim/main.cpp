#include <stdlib.h>
#include <verilated.h>
#include <verilated_vcd_c.h>

#include "Vaxi_top.h"
#include "axi_tb.h"

int main(int argc, char** argv, char** env) {
	Verilated::commandArgs(argc, argv);
	Verilated::traceEverOn(true);

	axi_tb<Vaxi_top>* axi = new axi_tb<Vaxi_top>();

	uint32_t resp = axi->write(0x20, 0x5);
	printf("Writing 0x5 to 0x20, resp: 0x%x\n", resp);

	uint32_t data = axi->read(0x20);
	printf("Reading from 0x20, data: 0x%x\n", data);

	return EXIT_SUCCESS;
}

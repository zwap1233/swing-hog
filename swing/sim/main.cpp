#include <stdlib.h>
#include <verilated.h>
#include <verilated_vcd_c.h>

#include "Vcore.h"
#include "axil_tb.h"

int main(int argc, char** argv, char** env) {
	Verilated::commandArgs(argc, argv);
	Verilated::traceEverOn(true);

	axil_tb<Vcore>* axil = new axil_tb<Vcore>();

	uint32_t resp = axil->write(0x20, 0x5);
	printf("Writing 0x5 to 0x20, resp: 0x%x\n", resp);

	uint32_t data = axil->read(0x20);
	printf("Reading from 0x20, data: 0x%x\n", data);

	return EXIT_SUCCESS;
}

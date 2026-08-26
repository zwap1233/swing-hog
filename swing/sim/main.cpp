#include <stdlib.h>
#include <verilated.h>
#include <verilated_vcd_c.h>

#include "Vaxi_top.h"
#include "axi_tb.h"

void print_buf(uint32_t addr, uint32_t* data, int len) {
	printf("============ 0x%x ===========\n", addr);

	int i = 0;
	while (i < len) {
		for (int j = 0; j < 8 && i < len; j++) {
			printf("0x%x ", data[i]);
			i++;
		}

		printf("\n");
	}

	printf("=============================\n");
}

int main(int argc, char** argv, char** env) {
	Verilated::commandArgs(argc, argv);
	Verilated::traceEverOn(true);

	axi_tb<Vaxi_top>* axi = new axi_tb<Vaxi_top>();

	uint32_t orig_data[16];
	for (int i = 0; i < 16; i++) orig_data[i] = (i + 3) << 24 | (i + 2) << 16 | (i + 1) << 8 | i;

	axi->write(0x0, orig_data, 16);

	uint32_t new_data[16];
	axi->read(0x0, new_data, 16);

	printf("Original data:\n");
	print_buf(0, orig_data, 16);
	printf("New data:\n");
	print_buf(0, new_data, 16);

	return EXIT_SUCCESS;
}

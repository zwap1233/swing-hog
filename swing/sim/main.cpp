#include <stdlib.h>
#include <verilated.h>
#include <verilated_vcd_c.h>

#include "Vswing.h"
#include "axil_tb.h"

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

	axil_tb<Vswing>* axil = new axil_tb<Vswing>();

	uint32_t read_data[16];
	uint32_t write_data[16];
	for (int i = 0; i < 16; i++) write_data[i] = (i + 3) << 24 | (i + 2) << 16 | (i + 1) << 8 | i;

	printf("\nWrite data:\n");
	print_buf(0, write_data, 16);

	axil->write_buf(0, write_data, 16);

	axil->readAndWrite_buf(0, 16*4, read_data, write_data, 16);

	printf("\nRead data:\n");
	print_buf(0, read_data, 16);

	uint32_t write_check_data[16];
	axil->read_buf(16*4, write_check_data, 16);

	printf("\nWrite check data:\n");
	print_buf(16, read_data, 16);

	return EXIT_SUCCESS;
}

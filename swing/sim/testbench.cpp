#include <stdlib.h>
#include <verilated.h>
#include <verilated_vcd_c.h>

#include "Vcore.h"

int main(int argc, char **argv, char **env) {
	Verilated::commandArgs(argc, argv);

	return EXIT_SUCCESS;
}

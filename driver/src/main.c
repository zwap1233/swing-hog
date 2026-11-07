#include <sys/mman.h>
#include <stdio.h>
#include <fcntl.h>
#include <unistd.h>
#include <stdint.h>

#include "uio_helper.h"

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

int main() {
	struct uio_info_t *dev_info = uio_find_devices(0);
	if(!dev_info) {
		perror("Failed to find device uio0");
		return 1;
	}

	if(uio_get_all_info(dev_info) != 0) {
		perror("Failed to load device info for uio0");
		uio_free_info(dev_info);
		return 1;
	}

	int fd = open("/dev/uio0", O_RDWR | O_SYNC);
	if(fd < 0) {
		perror("Failed to open /dev/uio0");
		uio_free_info(dev_info);
		return 1;
	}
	
	volatile uint32_t* regs = (volatile uint32_t*) uio_single_mmap(dev_info, 0, fd);
	if(!regs) {
		perror("Failed to map memory");
		close(fd);
		uio_free_info(dev_info);
		return 1;
	}

	uint32_t orig_data[16];
	for (int i = 0; i < 16; i++) orig_data[i] = regs[i];

	printf("Original Data, before write:\n");
	print_buf(0, orig_data, 16);

	uint32_t write_data[16];
	for (int i = 0; i < 16; i++) write_data[i] = (i + 3) << 24 | (i + 2) << 16 | (i + 1) << 8 | i;
	for (int i = 0; i < 16; i++) regs[i] = write_data[i];

	uint32_t read_data[16];

	printf("read_data, before write:\n");
	print_buf(0, read_data, 16);

	for (int i = 0; i < 16; i++) read_data[i] = regs[i];

	printf("write data:\n");
	print_buf(0, write_data, 16);

	printf("read data:\n");
	print_buf(0, read_data, 16);

	return 0;
}

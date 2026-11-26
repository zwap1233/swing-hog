
BUILD_DIR := ../sby-build
CONFIG_DIR := .
HDL_DIR := ../hdl

.PHONY: all axil-ram axil-ctrl

all: axil-ram axil-ctrl

axil-ram:
	sby -f --prefix $(BUILD_DIR)/axil_ram $(CONFIG_DIR)/axil_ram.sby prove
	sby -f --prefix $(BUILD_DIR)/axil_ram $(CONFIG_DIR)/axil_ram.sby cover

axil-ctrl:
	sby -f --prefix $(BUILD_DIR)/axil_ctrl $(CONFIG_DIR)/axil_ctrl.sby prove
	sby -f --prefix $(BUILD_DIR)/axil_ctrl $(CONFIG_DIR)/axil_ctrl.sby cover

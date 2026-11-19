
BUILD_DIR := ../sby-build
CONFIG_DIR := .
HDL_DIR := ../hdl

.PHONY: all axil skidbuffer

all: axil skidbuffer

axil:
	sby -f --prefix $(BUILD_DIR)/axil $(CONFIG_DIR)/axil.sby prove
	sby -f --prefix $(BUILD_DIR)/axil $(CONFIG_DIR)/axil.sby cover

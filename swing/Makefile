
VFLAGS ?= -Wall -Wno-fatal --trace -CFLAGS -g -O0
OBJDIR := obj_dir

TOP := axi_top

SRCS := $(shell find ./hdl/ -name "*.sv") $(shell find ./hdl/ -name "*.v")
SIM_SRCS := $(shell find ./sim/ -name "*.cpp") 
SIM := $(OBJDIR)/V$(TOP)

FORMAL_CONFIG_DIR := ./sby-files

.PHONY: all lint sim run code wave clean formal

default: sim

all: lint run

formal:
	make -C $(FORMAL_CONFIG_DIR)

echo:
	@echo $(SRCS)
	@echo $(SIM_SRCS)

lint:
	verilator $(VFLAGS) --lint-only -top-module $(TOP) $(SRCS)

sim: $(SIM)
$(SIM): code $(SRCS) $(SIM_SRCS)
	make -C $(OBJDIR) -f V$(TOP).mk

code:
	verilator $(VFLAGS) --cc -Mdir $(OBJDIR) -top-module $(TOP) $(SRCS) -exe $(SIM_SRCS)

run: $(SIM)
	./$(SIM)

wave: run
	surfer -s trace.surf.ron trace.vcd

clean:
	rm -rf $(OBJDIR) trace.vcd

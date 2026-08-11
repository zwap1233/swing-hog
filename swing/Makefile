
VFLAGS ?= -Wall -Wno-fatal --trace
OBJDIR := obj_dir

TOP := core

SRCS := $(shell find ./hdl/ -name "*.sv") $(shell find ./hdl/ -name "*.v")
SIM_SRCS := $(shell find ./sim/ -name "*.cpp")

SIM := $(OBJDIR)/V$(TOP)

.PHONY: all lint sim run wave clean

default: run

all: lint run

lint:
	echo $(SRCS)
	verilator $(VFLAGS) --lint-only -top-module $(LINT_TOP) $(SRCS)

sim: $(SIM)
$(SIM): code $(SRCS) $(SIM_SRCS)
	make -C $(OBJDIR) -f V$(TOP).mk

code:
	verilator $(VFLAGS) --cc -Mdir $(OBJDIR) $(SRCS) -exe $(SIM_SRCS)

run: $(SIM)
	./$(SIM)

wave: run
	gtkwave $(OBJDIR)/waveform.vcd &

clean:
	rm -rf $(OBJDIR)

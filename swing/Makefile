
VFLAGS ?= -Wall -Wno-fatal --trace
OBJDIR := obj_dir

SIM_TOP := sim_main
LINT_TOP := core

SRCS := $(shell find ./hdl/ -name "*.sv") $(shell find ./hdl/ -name "*.v")
SIM_SRCS := $(shell find ./sim/ -name "*.cpp")

SIM := $(OBJDIR)/V$(SIM_TOP)

.PHONY: all lint sim run wave clean

default: run

all: lint run

lint:
	echo $(SRCS)
	verilator $(VFLAGS) --lint-only -top-module $(LINT_TOP) $(SRCS)

sim: $(SIM)
$(SIM): $(SRCS) $(SIM_SRCS)
	verilator $(VFLAGS) --binary -Mdir $(OBJDIR) -top-module $(SIM_TOP) $(SRCS) $(SIM_SRCS)

run: $(SIM)
	./$(SIM)

wave: run
	gtkwave trace.vcd &

clean:
	rm -rf $(OBJ_DIR)

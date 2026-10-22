
SRC := $(wildcard src/*.c) $(wildcard src/*.cpp)
INC := $(wildcard inc/*.h)
INC_DIR := inc

OBJ_DIR := build

OBJS := $(patsubst %.c, %.o, $(SRC))

.PHONY: all clean

all: $(OBJS)

%.o: %.c
	echo $(SRC)
	echo $(INC)
	echo $(INC_DIR)
	echo $(OBJS)
	$(CC) -MD -I$(INC_DIR) -o $(OBJ_DIR)/$@ $<

clean:
	rm -rf *.o *.d

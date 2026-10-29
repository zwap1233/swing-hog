
SRC_DIR := src
INC_DIR := inc
BUILD_DIR := build

C_SRC := $(shell find -path "./$(SRC_DIR)/*.c")
CPP_SRC := $(shell find -path "./$(SRC_DIR)/*.cpp")
OBJS := $(patsubst ./$(SRC_DIR)/%.c, ./$(BUILD_DIR)/%.o, $(C_SRC)) $(patsubst ./$(SRC_DIR)/%.cpp, ./$(BUILD_DIR)/%.o, $(CPP_SRC))

OUT_FILE := driver.bin

.PHONY: all clean

all: $(OUT_FILE)

$(OUT_FILE): $(OBJS)
	$(CC) -o $@ $^

$(BUILD_DIR)/%.o: $(SRC_DIR)/%.c
	mkdir -p $(dir $@)
	$(CC) -MD -I$(INC_DIR) -c -o $@ $<

$(BUILD_DIR)/%.o: $(SRC_DIR)/%.cpp
	mkdir -p $(dir $@)
	$(CXX) -MD -I$(INC_DIR) -c -o $@ $<

clean:
	rm -rf $(OUT_FILE)
	rm -rf $(BUILD_DIR)

-include $(OBJS:.o=.d)

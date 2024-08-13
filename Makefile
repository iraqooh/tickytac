# Compiler
CC = gcc

# Directories
SRC_DIR = src
OBJ_DIR = obj
BIN_DIR = bin
TEST_SRC_DIR = tests/src
TEST_OBJ_DIR = tests/obj
TEST_BIN_DIR = tests/bin

# Files
MAIN_SRC = $(SRC_DIR)/main.c
TICTAC_SRC = $(SRC_DIR)/tickytac.c
TICTAC_OBJ = $(OBJ_DIR)/tickytac.o
MAIN_OBJ = $(OBJ_DIR)/main.o
TARGET = $(BIN_DIR)/tickytac
TEST_SRC = $(TEST_SRC_DIR)/test_tickytac.c
TEST_OBJ = $(TEST_OBJ_DIR)/test_tickytac.o
TEST_TARGET = $(TEST_BIN_DIR)/test_tickytac

# Flags
CFLAGS = -Wall -I$(SRC_DIR)

# Ensure directories exist
$(OBJ_DIR):
	mkdir -p $(OBJ_DIR)

$(BIN_DIR):
	mkdir -p $(BIN_DIR)

$(TEST_OBJ_DIR):
	mkdir -p $(TEST_OBJ_DIR)

$(TEST_BIN_DIR):
	mkdir -p $(TEST_BIN_DIR)

# Main build
all: $(TARGET)

$(TARGET): $(TICTAC_OBJ) $(MAIN_OBJ)
	$(CC) $(TICTAC_OBJ) $(MAIN_OBJ) -o $(TARGET)

$(OBJ_DIR)/%.o: $(SRC_DIR)/%.c | $(OBJ_DIR) $(BIN_DIR)
	$(CC) $(CFLAGS) -c $< -o $@

# Test build
test: $(TEST_TARGET)

$(TEST_TARGET): $(TICTAC_OBJ) $(TEST_OBJ) | $(TEST_OBJ_DIR) $(TEST_BIN_DIR)
	$(CC) $(TICTAC_OBJ) $(TEST_OBJ) -o $(TEST_TARGET)

$(TEST_OBJ_DIR)/%.o: $(TEST_SRC_DIR)/%.c | $(TEST_OBJ_DIR)
	$(CC) $(CFLAGS) -c $< -o $@

# Clean
clean:
	rm -rf $(OBJ_DIR) $(BIN_DIR) $(TEST_OBJ_DIR) $(TEST_BIN_DIR)

# Run
run: all
	$(TARGET)

run-test: test
	$(TEST_TARGET)

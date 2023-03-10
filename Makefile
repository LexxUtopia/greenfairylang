CC = clang
CFLAGS = -Wextra -Wundef

BUILD = ./build

C_FILES = src/main.c src/vm.c src/debug.c src/compiler.c src/scanner.c src/memory.c src/chunk.c src/value.c

all: interpreter

interpreter:
	$(CC) -o $(BUILD)/$(@) $(C_FILES) $(CFLAGS)

clean:
	-rm -f $(BUILD)/interpreter



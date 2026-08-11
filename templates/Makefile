CC      := gcc
CFLAGS  := -Wall -Wextra -Wpedantic -g -std=c17
LDFLAGS :=
TARGET  := program
SRCS    := $(wildcard *.c)
OBJS    := $(SRCS:.c=.o)
DEPS    := $(OBJS:.o=.d)

.PHONY: all debug clean run valgrind

all: $(TARGET)

$(TARGET): $(OBJS)
	$(CC) $(CFLAGS) -o $@ $^ $(LDFLAGS)

%.o: %.c
	$(CC) $(CFLAGS) -MMD -MP -c $< -o $@

-include $(DEPS)

debug: CFLAGS += -fsanitize=address,undefined -fno-omit-frame-pointer
debug: LDFLAGS += -fsanitize=address,undefined
debug:
	$(MAKE) clean
	$(MAKE) $(TARGET) CFLAGS="$(CFLAGS) -fsanitize=address,undefined -fno-omit-frame-pointer" LDFLAGS="$(LDFLAGS) -fsanitize=address,undefined"

valgrind: $(TARGET)
	valgrind --leak-check=full --show-leak-kinds=all --track-origins=yes ./$(TARGET)

run: $(TARGET)
	./$(TARGET)

clean:
	rm -f $(OBJS) $(DEPS) $(TARGET)

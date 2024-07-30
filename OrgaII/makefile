AS := nasm
ASFLAGS := -f elf64 -F DWARF -g -Wall
LD := ld
LDFLAGS := -g
TARGET := calling_convention

.PHONY: all clean
	all: $(TARGET)

calling_convention.o: calling_convention.nasm
	$(AS) $(ASFLAGS) $<

$(TARGET): calling_convention.o
	$(LD) $(LDFLAGS) $< -o $@

clean:
	rm -rf *.o $(TARGET)

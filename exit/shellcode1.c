#include <stdio.h>
#include <string.h>
#include <sys/mman.h>
#include <unistd.h>

unsigned char code[] = \
"\x48\x31\xc0\xb0\x3c\x48\x31\xff\x0f\x05";

int main() {
    printf("Shellcode Length:  %d\n", (int)strlen(code));

    // Align the memory page size
    size_t pagesize = sysconf(_SC_PAGESIZE);
    void *page = (void *)((size_t)code & ~(pagesize - 1));

    // Mark the memory as executable
    if (mprotect(page, pagesize, PROT_READ | PROT_WRITE | PROT_EXEC) == -1) {
        perror("mprotect");
        return 1;
    }

    // Execute the shellcode
    int (*ret)() = (int(*)())code;
    ret();

    return 0;
}




long globalNoInit;                  // bss
long globalInit = 31416;            // data
const long globalInitConst = 14142; // rodata

int main(int argc, char *argv[]) {
  long localNoIni;       // stack
  long localIni = 27182; // stack
  return 0;
}

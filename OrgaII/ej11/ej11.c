
typedef struct superlong_t {
  long x1;
  long x2;
} superlong;

void suma(superlong* a, superlong* b, superlong* resultado) {
  
}

int main() {
  
  superlong *ptr_a = (superlong *) malloc(sizeof(superlong));
  ptr_a->x1 = 0x00112233;
  ptr_a->x2 = 0x44556677;

  superlong *ptr_b = (superlong *) malloc(sizeof(superlong));
  ptr_b->x1 = 0x8899AABB;
  ptr_b->x2 = 0xCCDDEEFF;

  superlong *ptr_result = (superlong *) malloc(sizeof(superlong));

  suma(ptr_a, ptr_b, ptr_result);

}
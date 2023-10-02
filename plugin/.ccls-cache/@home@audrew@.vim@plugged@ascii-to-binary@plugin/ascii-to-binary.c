#include <stdio.h>

int main() {
  char letter = 'Y';
  int ascii_value = (int)letter;
  // Convert ascii to binary
  int binary_value[8];
  for (int i = 7; i > 0; i--) {
    binary_value[i] = (ascii_value >> i) & 1;
  }
  printf("The binary representation is: ");
  for (int i = 0; i < 8; i++) {
    printf("%d", binary_value[i]);
  }
  printf("\n");
}

#include <ctype.h>
#include <stdio.h>

int main() {
  char letter;
  int ascii_value = (int)letter;
  int binary_value[8];
  scanf(" %c", &letter);
  if (isdigit(letter)) {
    for (int i = 7; i > 0; i--) {
      binary_value[i] = (ascii_value >> i) & 1;
    }
    for (int i = 0; i < 8; i++) {
      printf("%d", binary_value[i]);
    }
  } else if (isalpha(letter)) {
    for (int i = 7; i > 0; i--) {
      binary_value[i] = (ascii_value >> i) & 1;
    }
    for (int i = 0; i < 8; i++) {
      printf("%d", binary_value[i]);
    }
  }
  return 0;
}

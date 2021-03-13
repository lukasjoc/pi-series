#include <stdio.h>

const float pi_nks(const int limit) {
  float pi = 3.0;
  int s = 1;
  for(int i=2; i <=limit; i+=2) {
    pi += (float) s*4 / (float) (i * (i+1) * (i+2) );
    s = s*(-1);
  }
  return pi;
}

const float pi_gls(const int limit) {
  float pi = 0;
  int s = 1;
  for(int i = 1; i <= limit; i+=2) {
    pi += s * (float) 4/i;
    s = s*(-1);
  }
  return pi;
}

int main(int argc, char *argv[]) {
  const int LIMIT = 100;
  printf("NKS: %.13f\n", pi_nks(LIMIT));
  printf("GLS: %.13f\n", pi_gls(LIMIT));
  return 0;
}

#include <stdio.h>

void pi_nks_series(unsigned int limit, double *pi) {
  int s = 1;
  for(int i=2; i <=limit; i+=2) {
	*pi += (double) s*4 / (double) (i * (i+1) * (i+2) );
	s = s*(-1);
  }
}

void pi_gls_series(unsigned const int limit, double *pi) {
  int s = 1;
  for(int i = 1; i <= limit; i+=2) {
	*pi += s * (double) 4/i;
	s = s*(-1);
  }
}

int main(void) {
  unsigned int const limit = 100;
  double pi_nks_seed = 3.0;
  double pi_gls_seed = 0.0;

  pi_nks_series(limit, &pi_nks_seed);
  pi_gls_series(limit, &pi_gls_seed);

  printf("NKS: %.13f\n", pi_nks_seed);
  printf("GLS: %.13f\n", pi_gls_seed);

  return 0;
}

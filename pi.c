#include <stdio.h>

// pi_gls finds pi with the Gregory-Leibnitz-Series (4/1 - 4/2+1 + 4/2+3 ...)
double pi_gls(const int LIMIT) {
	double pi = 0.0;
	int s = 1;
	for(int i = 1; i <=LIMIT; i+=2 ) {
		pi += s*(4/i);
		s = s*(-1);
	}
	return pi;
}

// pi_nks find pi with the Nilakantha-Series (3+4/(2*3*4) - 3+4/(4*5*6) + 3+4/(6*7*8) ...)
double pi_nks(const int LIMIT) {
	double pi = 3.0;
	int s = 1;
	for(int i=2; i <=LIMIT; i+=2) {
		pi = pi + (s*4/(i*(i+1)*(i+2)));
		s = (s*(-1));
	}
	return pi;
}

int main(int argc, char *argv[]) {
	const int LIMIT = 100;
	printf("GLS Series Result: %f\n", pi_gls(LIMIT));
	printf("NKS Series Result: %f\n", pi_nks(LIMIT));
	return 0;
}



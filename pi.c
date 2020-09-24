#include <stdio.h>

// pi_gls finds pi with the Gregory-Leibnitz-Series (4/1 - 4/2+1 + 4/2+3 ...)
float pi_gls(const int limit) {
	float pi = 0.0;
	int s = 1;
	for(int i = 1; i <=limit; i+=2 ) {
		
		pi += (float) s*(4/i);
		s = s*(-1);
	}
	return pi;
}

float pi_nks(const int limit) {
	float pi = 3.0;
	int s = 1;
	for(int i=2; i <=limit; i+=2) {
		pi += (float) s*4 /  (float)  (i * (i+1) * (i+2) );
		s = (s*(-1));
	}
	return pi;
}

int main(int argc, char *argv[]) {
	const int limit = 100;
	printf("GLS Series Result: %f\n", pi_gls(limit));
	printf("NKS Series Result: %f\n", pi_nks(limit));
	return 0;
}



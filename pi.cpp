#include <iostream>
#include <iomanip>

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

int main() {
  const int LIMIT = 100;
  std::cout << std::setprecision(13);
  std::cout << "NKS: " << pi_nks(LIMIT) << std::endl;
  std::cout << "GLS: " << pi_gls(LIMIT) << std::endl;
  return 0;
}

package main

import "fmt"

func pi_nks(limit int) (pi float64) {
	pi = 3.0
	s := 1
	for i := 2; i <= limit; i += 2 {
		pi += (float64(s*4) / float64(i*(i+1)*(i+2)))
		s = s * (-1)
	}
	return pi
}

func pi_gls(limit int) (pi float64) {
	s := 1
	for i := 1; i <= limit; i += 2 {
		pi += float64(s * (4 / i))
		s = s * (-1)
	}
	return pi
}

func main() {
	const limit = 10000
	fmt.Printf("NKS: %.13f\n", pi_nks(limit))
	fmt.Printf("GLS: %.13f\n", pi_gls(limit))
}

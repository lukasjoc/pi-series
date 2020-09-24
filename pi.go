package main

import "fmt"

func pi_nks(limit int) float64 {
	pi := 3.0
	s := 1
	for i := 2; i <= limit; i += 2 {
		pi += (float64(s*4) / float64(i*(i+1)*(i+2)))
		s = s * (-1)
	}
	return pi
}

func pi_gls(limit int) float64 {
	pi := 0.0
	s := 1
	for i := 1; i <= limit; i += 2 {
		calc := s * (4 / i)
		pi += float64(calc)
		s = s * (-1)
	}
	return pi
}

func main() {
	const limit = 100
	fmt.Printf("GLS: %f\n", pi_gls(limit))
	fmt.Printf("NKS: %f\n", pi_nks(limit))
}

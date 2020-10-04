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
	s := 1.0
	for i := 1; i <= limit; i += 2 {
		pi += float64(s*4) / float64(i)
		s = s * (-1)
	}
	return pi
}

func main() {
	const LIMIT = 100
	fmt.Printf("NKS: %.13f\n", pi_nks(LIMIT))
	fmt.Printf("GLS: %.13f\n", pi_gls(LIMIT))
}

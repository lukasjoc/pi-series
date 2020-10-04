fn pi_nks(limit int) f64 {
	mut pi := 3.0
	mut s := 1
	for i :=2; i <=limit; i+=2 {
		pi += f64(s*4) / f64(i * (i+1) * (i+2))
		s = s*(-1)
	}
	return pi
}

fn pi_gls(limit int) f64 {
	mut pi := 0.0
	mut s := 1
	for i := 1; i <= limit; i+=2 {
		pi +=	f64(s*4) / f64(i)
		s = s*(-1)
	}
	return pi
}

const ( limit = 100 )
println("NKS: ${pi_nks(limit):.13f}")
println("GLS: ${pi_gls(limit):.13f}")

const pi_nks = (limit) => {
	let pi = 3.0
	let s = 1
	for(let i=2; i<=limit; i+=2) {
		pi += (s*4/(i*(i+1)*(i+2)))
		s = (s*(-1))
	}
	return pi
}

const pi_gls = (limit) => {
	let pi = 0.0
	let s = 1
	for(let i=1; i<=limit; i+=2) {
		pi += (s*4/i)
		s = (s*(-1))
	}
	return pi
}

(() => {
	const limit = 100
	console.log(`NKS: ${pi_nks(limit)}`)
	console.log(`GLS: ${pi_gls(limit)}`)
})()

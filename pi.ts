
const pi_nks = (limit: number): number => {
	let pi: number = 3.0
	let s: number = 1
	for(let i=2; i<=limit; i+=2) {
		pi += (s*4/(i*(i+1)*(i+2)))
		s = (s*(-1))
	}
	return pi
}

const pi_gls = (limit: number): number => {
	let pi: number = 0.0
	let s: number = 1
	for(let i=1; i<=limit; i+=2) {
		pi += (s*4/i)
		s = (s*(-1))
	}
	return pi
}

((): void => {
	const limit: number = 100
	console.log(`NKS: ${pi_nks(limit).toFixed(13)}`)
	console.log(`GLS: ${pi_gls(limit).toFixed(13)}`)
})()

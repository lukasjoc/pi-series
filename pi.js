const LIMIT = 100

const pi_nks = () => {
  let pi = 3.0
  let s = 1
  for(let i=2; i<=limit; i+=2) {
    pi += (s*4/(i*(i+1)*(i+2)))
    s = (s*(-1))
  }
  return pi
}

const pi_gls = () => {
  let pi = 0.0
  let s = 1
  for(let i=1; i<=limit; i+=2) {
    pi += (s*4/i)
    s = (s*(-1))
  }
  return pi
}

const limit = 100
console.log(`NKS: ${pi_nks().toFixed(13)}`)
console.log(`GLS: ${pi_gls().toFixed(13)}`)

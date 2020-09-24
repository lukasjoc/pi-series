import strformat

proc pi_nks(l: int): float=
  var pi: float = 3.0
  var s: int = 1
  for i in countup(2, l, 2):
    pi += s*4/(i*(i+1)*(i+2))
    s = s*(-1)
  pi

proc pi_gls(l: int): float=
  var pi: float = 0.0
  var s: int = 1
  for i in countup(1, l, 2):
    pi += float(s*4/i)
    s = s*(-1)
  pi

const limit: int = 100
echo fmt("NKS: {pi_nks(limit):.13f}")
echo fmt("GLS: {pi_gls(limit):.13f}")

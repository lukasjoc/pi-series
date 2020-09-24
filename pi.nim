# Calculating Pi

# Calc with gls series
proc pi_gls(l: int): float=
  var pi: float = 0.0
  var s: int = 1
  for i in countup(1, l, 2):
    pi += float(s*4/i)
    s = s*(-1)
  pi

# Calc with nks series
proc pi_nks(l: int): float=
  var pi: float = 3.0
  var s: int = 1
  for i in countup(2, l, 2):
    pi += s*4/(i*(i+1)*(i+2))
    s = s*(-1)
  pi

echo pi_gls(100)
echo pi_nks(100)

def pi_nks(limit)
  pi = 3.0
  s =  1
  (2...limit).step(2).each do |i|
    pi += (s*4).to_f / ( i*(i+1) * (i+2) ).to_f
    s = s*(-1)
  end
  return pi
end

def pi_gls(limit)
  pi = 0.0
  s =  1
  (1...limit).step(2).each do |i|
    pi += (s*4).to_f / i
    s = s*(-1)
  end
  return pi
end

LIMIT = 100
puts "NKS: %.13f" % [pi_nks(LIMIT)]
puts "GLS: %.13f" % [pi_gls(LIMIT)]

a, b, c, d = gets.split.map(&:to_i)

cdi = b/c - (a-1)/c
ddi = b/d - (a-1)/d

cdlcm = c.lcm(d)
cddi = b/cdlcm - (a-1)/cdlcm

puts (b-a+1) - cdi - ddi + cddi

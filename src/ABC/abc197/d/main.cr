require "complex"

n = read_line.to_i
xi, yi = read_line.split.map(&.to_i)
xn, yn = read_line.split.map(&.to_i)

xo = (xi+xn)/2
yo = (yi+yn)/2

b = Complex.new(xo, yo)
c = Complex.new(xi, yi)
rad = 360/n * (Math::PI/180)
d = Complex.new(Math.cos(rad), Math.sin(rad))
ans = (c-b) * d + b
puts [ans.real, ans.imag].join(" ")

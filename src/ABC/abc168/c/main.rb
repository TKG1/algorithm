a, b, h, m = gets.split.map(&:to_i)
h = ((h+(1.0*m/60)) % 12) * 30
m = (m % 60) * 6
x = (h - m).abs
if x > 180
  x = 360 - x
end

x = x * (Math::PI / 180)
c = Math.sqrt(a*a+b*b-2*a*b*Math.cos(x))
puts c

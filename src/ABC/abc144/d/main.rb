a,b,x = gets.split.map(&:to_r)

s = x/a
if s >= a*b/2
  h = 2*(a*b-s)/a
  ans = Math.atan2(h, a) * (180/Math::PI)
else
  w = 2*s/b
  ans = Math.atan2(b, w) * (180/Math::PI)
end
puts ans

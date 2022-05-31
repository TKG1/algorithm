r, x, y = read_line.split.map(&.to_i64)
d = Math.sqrt(x*x+y*y)
ans = 0
if d == r
  ans = 1
elsif d <= r+r
  ans = 2
else
  ans = (d/r).ceil.to_i
end

puts ans

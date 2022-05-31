n, d = gets.split.map(&:to_i)

ans = 0
n.times do
  x, y = gets.split.map(&:to_i)
  ans += 1 if x*x+y*y <= d*d
end

puts ans

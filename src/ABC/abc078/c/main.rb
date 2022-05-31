n, m = gets.split.map(&:to_i)
time = 1900 * m + 100 * (n-m)
x = 1
m.times do
  x *= 2
end

ans = time * x
puts ans

n, m = gets.split.map(&:to_i)
a = gets.split.map(&:to_i)
a << 0 << n+1
a.sort!

s = []
(m+1).times do |i|
  x = a[i+1] - a[i] - 1
  s << x if x != 0
end

min = s.min
ans = 0
s.each do |i|
  ans += (i+min-1)/min
end

puts ans

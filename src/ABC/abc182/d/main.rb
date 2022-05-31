n = gets.to_i
a = gets.split.map(&:to_i)

ans = 0
s = 0
b = 0
max_b = 0
n.times do |i|
  b += a[i]
  max_b = [max_b, b].max
  ans = [ans, s+max_b].max
  s += b
end

puts ans

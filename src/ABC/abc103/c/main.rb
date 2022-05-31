n = gets.to_i
a = gets.split.map(&:to_i)

b = 1
n.times do |i|
  b = b.lcm(a[i])
end

ans = 0
n.times do |i|
  ans += ((b-1)%a[i])
end

puts ans

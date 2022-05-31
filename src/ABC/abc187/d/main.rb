n = gets.to_i
sum = []
x = 0
n.times do |i|
  a, b = gets.split.map(&:to_i)
  sum << a+a+b
  x -= a
end

ans = 0
sum.sort!
while x <= 0
  x += sum[-1]
  sum.pop
  ans += 1
end

puts ans

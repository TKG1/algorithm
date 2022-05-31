x, y = gets.split.map(&:to_i)

i = x
ans = 0
while i <= y
  i *= 2
  ans += 1
end

puts ans

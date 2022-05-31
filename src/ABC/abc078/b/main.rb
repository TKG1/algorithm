x, y, z = gets.split.map(&:to_i)

ans = 0
i = 0
while i <= x-z
  i += y + z
  ans += 1
end

puts ans-1

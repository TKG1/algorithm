n = gets.to_i
d, x = gets.split.map(&:to_i)
cnt = 0

n.times do
  a = gets.to_i
  i = 1
  j = 1
  while j <= d
    j = i*a + 1
    i += 1
    cnt += 1
  end
end

puts cnt + x

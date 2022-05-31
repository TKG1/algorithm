a, b = gets.split.map(&:to_i)

ans = 0
(a..b).each do |i|
  i = i.to_s
  next if i[0] != i[-1] || i[1] != i[-2]
  ans += 1
end
puts ans

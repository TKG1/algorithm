a = read_line.split.map(&.to_i)
ans = 0
a.each do |i|
  ans += 7-i
end

puts ans

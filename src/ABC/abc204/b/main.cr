n = read_line.to_i
a = read_line.split.map(&.to_i)

ans = 0
a.each do |i|
  ans += {i-10, 0}.max
end
puts ans

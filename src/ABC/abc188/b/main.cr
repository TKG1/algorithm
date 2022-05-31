n = read_line.to_i
a = read_line.split.map(&.to_i)
b = read_line.split.map(&.to_i)

ans = 0_i64
n.times do |i|
  ans += a[i]*b[i]
end

puts ans == 0 ? "Yes" : "No"

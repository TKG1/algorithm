n, s, d = read_line.split.map(&.to_i)

flag = false
n.times do
  x, y = read_line.split.map(&.to_i)
  flag = true if x < s && d < y
end
puts flag ? "Yes" : "No"

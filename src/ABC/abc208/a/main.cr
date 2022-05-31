a, b = read_line.split.map(&.to_i)
puts a <= b && b <= (a * 6) ? "Yes" : "No"

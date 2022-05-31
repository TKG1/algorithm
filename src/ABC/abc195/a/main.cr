m, h = read_line.split.map(&.to_i)
puts h % m == 0 ? "Yes" : "No"

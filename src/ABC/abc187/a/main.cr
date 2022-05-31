a, b = read_line.split
a = a.chars.map(&.to_i).sum
b = b.chars.map(&.to_i).sum
puts a > b ? a : b

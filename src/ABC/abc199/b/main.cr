n = read_line.to_i
a = read_line.split.map(&.to_i)
b = read_line.split.map(&.to_i)

ans = 0
puts [(b.min - a.max + 1), 0].max

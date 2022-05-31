a, b = read_line.split.map(&.to_i)
c, d = read_line.split.map(&.to_i)
ans = {a, b}.max - {c, d}.min
puts ans

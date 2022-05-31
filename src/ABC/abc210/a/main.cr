n, a, x, y = read_line.split.map(&.to_i)
ans = x * {a, n}.min + y * {n-a, 0}.max
puts ans

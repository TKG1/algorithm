v, t, s, d = read_line.split.map(&.to_i)
puts v*t<=d && d<=v*s ? "No" : "Yes"

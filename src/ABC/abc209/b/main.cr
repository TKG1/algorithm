n, x = read_line.split.map(&.to_i)
a = read_line.split.map_with_index{|e, i| i.odd? ? e.to_i-1 : e.to_i}.sum
puts x >= a ? "Yes" : "No"

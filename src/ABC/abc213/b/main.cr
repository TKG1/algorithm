n = read_line.to_i
a = read_line.split.map_with_index{|e, i| {e.to_i, i}}.sort
puts a[-2][1]+1

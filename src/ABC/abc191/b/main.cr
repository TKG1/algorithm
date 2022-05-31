n, x = read_line.split.map(&.to_i)
a = read_line.split.map(&.to_i)
puts a.select{|e| e != x }.join(" ")

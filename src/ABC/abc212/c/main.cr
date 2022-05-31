n, m = read_line.split.map(&.to_i64)
a = read_line.split.map(&.to_i64)
b = read_line.split.map(&.to_i64).sort
ans = 101010101010
a.each do |ai|
  x = b.bsearch_index{|e| e >= ai } || m - 1
  ans = {ans, (ai-b[x]).abs, (ai-b[x-1]).abs}.min
end
puts ans

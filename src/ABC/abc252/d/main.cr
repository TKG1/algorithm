n = read_line.to_i64
a = read_line.split.map(&.to_i)
at = a.tally
all = ((n)*(n - 1)*(n - 2)) // 6

amx = a.max
at.each_value do |i|
  i = i.to_i64
  all -= i*(i - 1)//2*(n - i)
  all -= i*(i - 1)*(i - 2)//6
end
puts all

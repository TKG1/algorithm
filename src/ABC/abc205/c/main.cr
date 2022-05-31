a, b, c = read_line.split.map(&.to_i64)
if c.odd?
  x = a
  y = b
else
  x = a.abs
  y = b.abs
end

if x == y
  puts "="
elsif x < y
  puts "<"
else
  puts ">"
end

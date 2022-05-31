a, b = read_line.split.map(&.to_i)
case
when a + b >= 15 && b >= 8
  puts 1
when a + b >= 10 && b >= 3
  puts 2
when a + b >= 3
  puts 3
else
  puts 4
end

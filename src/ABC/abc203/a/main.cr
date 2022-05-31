a, b, c = read_line.split.map(&.to_i).sort
if a == b
  puts c
elsif b == c
  puts a
else
  puts 0
end

a, b, c = gets.split.map(&:to_i)
if a == b
  puts c
elsif b == c
  puts a
else
  puts b
end

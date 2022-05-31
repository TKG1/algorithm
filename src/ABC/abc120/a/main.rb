a, b, c = gets.split.map(&:to_i)
if a <= b
  puts [b/a, c].min
else
  puts 0
end

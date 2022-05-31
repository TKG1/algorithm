a, b, c, d = gets.split.map(&:to_i)
if b >= c && d >= a
  s = [a, c].max
  e = [b, d].min
  puts e - s
else
  puts 0
end

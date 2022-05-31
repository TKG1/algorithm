x, a, b = gets.split.map(&:to_i)
y = (b-a)
if y <= 0
  puts 'delicious'
elsif 0 < y && y <= x
  puts 'safe'
else
  puts 'dangerous'
end

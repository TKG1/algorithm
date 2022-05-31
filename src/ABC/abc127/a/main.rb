a, b = gets.split.map(&:to_i)
case
when a <= 5
  puts 0
when a <= 12
  puts b / 2
when 13 <= a
  puts b
end

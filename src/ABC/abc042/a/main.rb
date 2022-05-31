abc = gets.split.map(&:to_i)
if abc.count(5) == 2 && abc.count(7) == 1
  puts 'YES'
else
  puts 'NO'
end

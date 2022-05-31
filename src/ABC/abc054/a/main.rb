a, b = gets.split.map(&:to_i)
if a == 1 && b == 1
  puts "Draw"
  exit
elsif a == 1
  puts "Alice"
  exit
elsif b == 1
  puts "Bob"
  exit
end

if a == b
  puts 'Draw'
elsif a > b
  puts 'Alice'
else
  puts 'Bob'
end

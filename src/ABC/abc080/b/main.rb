n = gets.chomp
x = 0
n.each_char do |c|
  x += c.to_i
end
puts n.to_i % x == 0 ? 'Yes' : 'No'

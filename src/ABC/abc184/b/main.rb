n, x = gets.split.map(&:to_i)
gets.chomp.each_char do |c|
  i = c == 'o' ? 1 : -1
  x = [0, x+i].max
end

puts x

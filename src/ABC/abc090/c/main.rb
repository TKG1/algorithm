h, w = gets.split.map(&:to_i)
if h == 1 && w == 1
  puts 1
  exit
elsif h == 1 || w == 1
  puts h*w - 2
  exit
end

puts (h*w) - (2*h+2*w-4)

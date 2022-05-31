n = read_line.to_i
y = (108 * n) // 100
s = 206
if y == s
  puts "so-so"
elsif y < s
  puts "Yay!"
else
  puts ":("
end

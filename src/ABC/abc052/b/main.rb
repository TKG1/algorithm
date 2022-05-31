n = gets.to_i
s = gets.chomp
ans = 0
x = 0
s.chars do |c|
  if c == 'I'
    x += 1
  else
    x -= 1
  end
  ans = x if ans < x
end
puts ans

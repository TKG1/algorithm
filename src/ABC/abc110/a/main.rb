abc = gets.chomp.split(' ')
ans = 0
abc.permutation(3) do |a, b, c|
  x = (a + b).to_i
  y = c.to_i
  ans = (x+y) if ans < x+y
end
puts ans

require 'set'
a, b, k = gets.split.map(&:to_i)
ans = Set.new
k.times do |i|
  break if (a+i) > b
  ans << a + i
  ans << b - i
end
puts ans.sort

w = gets.to_i
ans = []
1.upto(99) do |i|
  ans << i
  ans << i*100
  ans << i*10000
end

puts ans.size
puts ans.join(' ')

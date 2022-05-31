n = gets.to_i
ans = 0
1.upto(n) do |i|
  next if i % 3 == 0 && i % 5 == 0
  next if i % 3 == 0
  next if i % 5 == 0
  ans += i
end

puts ans

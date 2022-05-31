n = gets.to_s.to_i

ans = 0
1.upto(n) do |i|
  next if i.to_s.includes?('7')
  next if i.to_s(8).includes?('7')
  ans += 1
end
puts ans

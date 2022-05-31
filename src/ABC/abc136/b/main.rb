n = gets.to_i

ans = 0
(1..n).each do |i|
  next if i.to_s.size.even?
  ans += 1
end

puts ans

n = gets.to_i
a = gets.split.map(&:to_i)

ans = 0
a.each do |i|
  ans = ans.gcd(i)
end

puts ans

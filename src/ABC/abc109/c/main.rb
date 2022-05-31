n, X = gets.split.map(&:to_i)
x = gets.split.map(&:to_i)

ans = 0
x.each do |i|
  ans = ans.gcd((X-i).abs)
end

puts ans

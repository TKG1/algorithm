n, a, b = gets.split.map(&:to_i)

ans = 0
('1'..n.to_s).each do |i|
  sum = i.chars.sum(&:to_i)
  if a <= sum && sum <= b
    ans += i.to_i
  end
end

puts ans

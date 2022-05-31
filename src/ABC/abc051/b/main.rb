k, s = gets.split.map(&:to_i)
ans = 0
0.upto(2500) do |x|
  0.upto(2500) do |y|
    z = s - x - y
    next if x > k || y > k || z > k || z < 0
    ans += 1
  end
end

puts ans

a = gets.split.map(&:to_i).sort
ans = 0
2.times do |i|
  ans += (a[i]-a[i+1]).abs
end

puts ans

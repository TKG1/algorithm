n = gets.to_i
a = gets.split.map(&:to_i)

ans = 0
(n-1).times do |i|
  if a[i] > a[i+1]
    ans += a[i] - a[i+1]
    a[i+1] = a[i]
  end
end

puts ans

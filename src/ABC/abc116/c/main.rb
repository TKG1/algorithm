n = gets.to_i
h = gets.split.map(&:to_i)

ans = 0
v = 0
n.times do |i|
  if v >= h[i]
    v = h[i]
  else
    ans += h[i] - v
    v = h[i]
  end
end

puts ans

n = gets.to_i
a = gets.split.map(&:to_i)
b = gets.split.map(&:to_i)
c = gets.split.map(&:to_i)

ans = 0
n.times do |i|
  ans += b[a[i]-1]
  if a[i] + 1 == a[i+1]
    ans += c[a[i]-1]
  end
end

puts ans

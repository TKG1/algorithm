n, x = gets.split.map(&:to_i)
a = gets.split.map(&:to_i)

ans = 0
(n-1).times do |i|
  s = a[i+1]
  sum = a[i] + s
  if x <= sum
    a[i+1] = [a[i+1]-(sum-x), 0].max
    ans += s-a[i+1]
  end
end

(n-1).times do |i|
  s = a[i]
  sum = s + a[i+1]
  if x <= sum
    a[i] = [a[i]-(sum-x), 0].max
    ans += s-a[i]
  end
end

puts ans

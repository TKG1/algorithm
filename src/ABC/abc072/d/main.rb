n = gets.to_i
a = gets.split.map(&:to_i)

ans = 0
n.times do |i|
  if a[i] == i+1 && i != n-1
    a[i], a[i+1] = a[i+1], a[i]
    ans += 1
  elsif i == n-1 && a[i] == i+1
    a[i], a[i-1] = a[i-1], a[i]
    ans += 1
  end
end

puts ans

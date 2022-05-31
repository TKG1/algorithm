n = gets.to_i
a = gets.split.map(&:to_i)
ans = 0
i = 1
ok = false
n.times do |j|
  if a[j] == i
    ok = true
    ans += 1
    i+=1
  end
end

puts ok ? n-ans : -1

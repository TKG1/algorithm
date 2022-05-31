n = gets.to_i
a = gets.split.map(&:to_i).sort
ta = a.tally
l = 0
r = a.size - 1
while l < r
  while ta[a[l]] <= 1 && l < r
    l += 1
  end
  while ta[a[r]] <= 1 && l < r
    r -= 1
  end
  break if l == r
  ta[a[l]] -= 1
  ta[a[r]] -= 1
end

ans = 0
ta.each_value do |val|
  if val == 1
    ans += 1
  end
end

puts ans

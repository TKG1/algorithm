l, r = gets.split.map(&:to_i)
ans = 0
i = r
while i > (r-1600)
  if i.gcd(l) == 1
    x = i - l
    ans = x if ans < x
  end
  i -= 1
end

puts ans

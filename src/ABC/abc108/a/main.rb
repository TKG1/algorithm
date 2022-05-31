k = gets.to_i

ans = 0
i = 2
while i <= k
  j = 1
  while j <= k
    ans += 1
    j += 2
  end
  i += 2
end

puts ans

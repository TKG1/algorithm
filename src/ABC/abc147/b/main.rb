s = gets.chomp
ans = 0
i = 0
j = s.size - 1
while i < j
  if s[i] != s[j]
    ans += 1
  end
  i += 1
  j -= 1
end

puts ans

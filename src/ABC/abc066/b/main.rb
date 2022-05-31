s = gets.chomp
ans = 0
l = s.size
i = l
while i > 1
  s.chop!
  i = s.size
  if i.even? && s[0, i/2] == s[i/2, l]
    ans = i if ans < i
  end
end

puts ans

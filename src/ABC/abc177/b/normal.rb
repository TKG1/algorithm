s = gets.chomp
t = gets.chomp
n = s.size
m = t.size

ans = m
i = 0
while i < (n - (m - 1))
  j = 0
  k = i
  cnt = 0
  while j < m
    if s[k] == t[j]
      cnt += 1
    end
    k += 1
    j += 1
  end
  ans = m - cnt if ans > m - cnt
  i += 1
end

puts ans

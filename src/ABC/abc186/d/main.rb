n = gets.to_i
a = gets.split.map(&:to_i)
a_s = a.sort
s = 0
i = 0
ans = 0
while i < n
  ans += a_s[i] * i
  ans -= s
  s += a_s[i]
  i += 1
end

puts ans

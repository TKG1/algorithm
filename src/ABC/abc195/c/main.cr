n = read_line.to_i64

l = 1000i64
ans = 0i64
r = 0i64
i = 1
while r != n
  r = {l*1000 - 1, n}.min
  ans += {r - l + 1, 0}.max * i
  l *= 1000
  i += 1
end

puts ans

n = read_line.to_i64

c = 0i64
i = 1i64
ans = 0i64
while c <= n * 2
  c = (i * (i+1))
  break ans = i if c >= n * 2
  i += 1
end

puts ans

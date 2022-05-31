n = read_line.to_i64
i = 0i64
c = 1i64
ans = 0
while i <= 60
  if c <= n
    ans = i
  else
    break
  end
  c *= 2
  i += 1
end

puts ans

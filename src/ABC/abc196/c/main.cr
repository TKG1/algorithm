n =read_line.to_i64

ans = 0
x = 0
i = 1
while x <= n
  j = i.to_s
  x = (j+j).to_i64
  ans += 1
  i += 1
end

puts ans-1

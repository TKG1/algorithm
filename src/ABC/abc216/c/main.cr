n = read_line.to_i64

ans = ""
while n > 0
  if n.even?
    n //= 2
    ans = "B" + ans
  else
    n -= 1
    ans = "A" + ans
  end
end

puts ans

n, k = read_line.split.map(&.to_i)

while k > 0
  if n % 200 == 0
    n //= 200
  else
    n = (n.to_s + "200").to_i64
  end
  k -= 1
end

puts n

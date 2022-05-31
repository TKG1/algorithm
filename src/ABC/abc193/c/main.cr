n = read_line.to_i64
c = Set(Int64).new

i = 2i64
while i * i <= n
  j = i * i
  while j <= n
    c << j
    j *= i
  end
  i += 1
end

puts n - c.size

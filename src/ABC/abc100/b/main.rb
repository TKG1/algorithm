def calc(x)
  res = 0
  while x % 100 == 0
    x /= 100
    res += 1
  end
  return res
end
d, n = gets.split.map(&:to_i)

cnt = 0
val = 0
while cnt < n
  val += 1
  cnt += 1 if calc(val) == d
end
puts val

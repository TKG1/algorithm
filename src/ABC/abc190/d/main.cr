def check(n : Int64, l : Int64)
  tmp = (n * 2) // l - l + 1
  return tmp.abs%2 == 0 ? 1 : 0
end

n = read_line.to_i64
x = 1i64
ans = 0
while x * x <= n*2
  if n*2 % x == 0
    ans += check(n, x)
    y = (n*2)//x
    ans += check(n, y) if x != y
  end
  x += 1
end

puts ans

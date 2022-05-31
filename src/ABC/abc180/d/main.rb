x, y, a, b = gets.split.map(&:to_i)

cnt = 0
while x * a <= x + b && a * x < y
  x *= a
  cnt += 1 # aを足した数
end

m = (y-x-1) / b # bを足した回数
puts cnt + m

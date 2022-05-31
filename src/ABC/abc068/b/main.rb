n = gets.to_i

cnt = 0
ans = n
1.upto(n) do |i|
  x = 0
  y = i
  while y.even?
    y /= 2
    x += 1
  end
  if cnt < x
    cnt = x
    ans = i
  end
end
puts ans

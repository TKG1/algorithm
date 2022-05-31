n = gets.to_i

i = 1
ans = 0
num = 0
x = 10
while num <= n
  x = 10 ** i.to_s.size if x == i
  num = i + x * i
  ans += 1 if num <= n
  i+=1
end

puts ans

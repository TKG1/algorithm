a, b, n = gets.split.map(&:to_i)
ans = 0
cnt = 0

b.downto(0) do |i|
  x = (a*i)/b - (a * (i/b))
  ans = x if ans < x && i <= n
  cnt += 1
  break if cnt > 10**6
end

cnt = 0
n.downto(0) do |i|
  x = (a*i)/b - (a * (i/b))
  ans = x if ans < x && i <= n
  cnt += 1
  break if cnt > 10**6
end

puts ans

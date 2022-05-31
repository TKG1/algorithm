n = read_line.to_i
INF = 10101010101010i64
ans = INF
n.times do
  a, px, x = read_line.split.map(&.to_i)
  x -= a
  ans = {px, ans}.min if x > 0
end

puts ans == INF ? -1 : ans

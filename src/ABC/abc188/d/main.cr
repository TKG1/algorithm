n, ci = read_line.split.map(&.to_i64)
cnt = Hash(Int64,Int64).new(0i64)

n.times do
  a, b, c = read_line.split.map(&.to_i64)
  cnt[a] += c
  cnt[b+1] -= c
end

ans = s = pre = 0i64
cnt.to_a.sort.each do |e|
  ans += {ci, s}.min * (e[0]-pre)
  s += e[-1]
  pre = e[0]
end

puts ans

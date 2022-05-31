n = read_line.to_i
aoki = 0.to_i64
ab = [] of Array(Int64)
absm = [] of Array(Int64)

n.times do |i|
  a, b = read_line.split.map(&.to_i64)
  aoki += a
  ab << [a, b]
  absm << [a*2+b, i.to_i64]
end

ans = 0.to_i64
t = 0.to_i64
absm.sort.reverse.each do |smi|
  sm, i = smi
  a, b = ab[i]
  t += (sm-a)
  aoki -= a
  ans += 1
  break if t > aoki
end

puts ans

n, k = read_line.split.map(&.to_i64)
ab = Array.new(n){read_line.split.map(&.to_i64)}.sort

now = 0i64
n.times do |i|
  a, b = ab[i]
  k -= a-now
  break k += (a-now) if k < 0
  k += b
  now = a
end
puts now + k

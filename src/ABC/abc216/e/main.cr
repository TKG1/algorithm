n, k = read_line.split.map(&.to_i64)
a = read_line.split.map(&.to_i64).sort

l = -1i64
r = (2*10**9+1).to_i64
while r - l > 1
  mid = (r+l)//2

  res = 0i64
  n.times do |i|
    res += {0, a[i] - mid}.max
  end
  res < k ? (r = mid) : (l = mid)
end

ans = 0i64
n.times do |i|
  next if a[i] <= r
  ans += (r+1+a[i])*(a[i]-r)//2
end

c = 0i64
n.times do |i|
  c += {0, a[i]-r}.max
end

ans += r * (k - c)
puts ans

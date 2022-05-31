n, k = read_line.split.map(&.to_i)
a = read_line.split.map(&.to_i)

l = 0
c = 0
cnt = 0
ans = 0
h = Hash(Int32, Int32).new(0)
n.times do |r|
  c += 1
  cnt += 1 if h[a[r]] == 0
  h[a[r]] += 1
  while c > k && l < r
    h[a[l]] -= 1
    cnt -= 1 if h[a[l]] == 0
    c -= 1
    l += 1
  end

  ans = {ans, cnt}.max
end

puts ans

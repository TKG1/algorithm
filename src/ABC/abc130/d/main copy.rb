n, k = gets.split.map(&:to_i)
a = gets.split.map(&:to_i)
i =0

r = 0
cnt = 0
ans = 0
n.times do |l|
  while r < n && cnt < k
    cnt += a[r]
    r += 1
  end
  next if cnt < k
  ans += n + 1 - r
  cnt -= a[l]
end

puts ans

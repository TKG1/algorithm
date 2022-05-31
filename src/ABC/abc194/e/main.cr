n, m = read_line.split.map(&.to_i)
a = read_line.split.map(&.to_i)

cnt = Hash(Int32, Int32).new(0)
ans = 1010101010
l = 0
k = 0
n.times do |r|
  cnt[a[r]] += 1
  k += 1
  while k > m && l < r
    cnt[a[l]] -= 1
    k -= 1
    l += 1
  end
  if k == m
    if l == 0
      0.upto(ans) do |i|
        break ans = {ans, i}.min if cnt[i] == 0
      end
    elsif cnt[a[l - 1]] == 0
      ans = {ans, a[l - 1]}.min
    end
  end
end

puts ans

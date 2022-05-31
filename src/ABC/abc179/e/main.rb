n, x, m = gets.split.map(&:to_i)
# if n == 1
#   puts x
#   exit
# end

# a = [x]
# cnt = []

# j = 2
# (n-1).times do |i|
#   c = a[-1].pow(2, m)
#   a << c
#   if cnt[c].nil?
#     cnt[c] = j
#   else
#     break
#   end
#   if j == n || c == 0
#     puts a.sum
#     exit
#   end
#   j+=1
# end

# cycle = j - cnt[a[-1]] # 周期
# ans = a[0...cnt[a[-1]]-1].sum # 周期外
# ans += ((n - cnt[a[-1]] + 1) / cycle) * (a[cnt[a[-1]]-1...(j-1)]).sum
# ans += a[(cnt[a[-1]]-1)...(cnt[a[-1]]-1 + (n - cnt[a[-1]] + 1) % cycle)].sum

# puts ans

d = 35
max = 100005
db = Array.new(d){Array.new(max, 0)}
sm = Array.new(d){Array.new(max, 0)}

0.upto(max-1) do |i|
  db[0][i] = i.pow(2, m)
  sm[0][i] = i
end

0.upto(d-2) do |i|
  0.upto(max-1) do |j|
    db[i+1][j] = db[i][db[i][j]]
    sm[i+1][j] = sm[i][j] + sm[i][db[i][j]]
  end
end

ans = 0

(d-1).downto(0) do |i|
  if (n & 1 << i) != 0
    ans += sm[i][x]
    x = db[i][x]
  end
end

puts ans

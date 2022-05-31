n = gets.to_i
a = gets.split.map(&:to_i)
b = gets.split.map(&:to_i)
c = gets.split.map(&:to_i)

d = []
n.times do |i|
  d[i] = b[c[i]-1]
end

cnt = d.tally
ans = 0
n.times do |i|
  unless cnt[a[i]].nil?
    ans += cnt[a[i]]
  end
end
puts ans

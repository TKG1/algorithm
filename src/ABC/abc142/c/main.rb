n = gets.to_i
a = gets.split.map(&:to_i)
cnt = []
n.times do |i|
  cnt << [a[i], i+1]
end
cnt.sort!

ans = []
n.times do |i|
  ans << cnt[i][1]
end

puts ans.join(' ')

n = gets.to_i
a = gets.split.map(&:to_i)

num = 0
n.times do |i|
  num ^= a[i]
end

ans = []
a.each do |i|
  ans << (i ^ num)
end

puts ans.join(' ')

n = gets.to_i
s, t = gets.chomp.split
ans = ''
n.times do |i|
  ans += s[i] + t[i]
end
puts ans

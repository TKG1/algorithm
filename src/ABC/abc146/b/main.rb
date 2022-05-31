n = gets.to_i
s = gets.chomp
a = ('A'..'Z').to_a
ans = ''
s.size.times do |i|
  x = a.find_index(s[i])
  ans += a[(x+n)%26]
end

puts ans

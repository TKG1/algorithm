n = gets.to_i
s = Array.new(n){ gets.chomp.chars.sort.join }
st = s.tally

ans = 0
n.times do |i|
  st[s[i]] -= 1
  ans += st[s[i]]
end

puts ans

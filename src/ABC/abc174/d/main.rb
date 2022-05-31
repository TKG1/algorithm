n = gets.to_i
s = gets.chomp.chars
st = s.tally
r = st['R'] || 0
w = st['W'] || 0
ans = [r, w].min

cnt = 0
r.times do |i|
  cnt += 1 if s[i] == 'W'
end

puts [ans, cnt].min

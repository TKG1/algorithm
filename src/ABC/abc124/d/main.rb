n, k = gets.split.map(&:to_i)
s = gets.chomp.chars.slice_when{|e,c| e != c}.map{|e| [e[0].to_i, e.size]}

l = 0
r = 0
m = s.size
cnt = 0
sm = 0
ans = 0

m.times do |r|
  sm += s[r][1]
  cnt += 1 if s[r][0] == 0

  while k < cnt
    sm -= s[l][1]
    cnt -= 1 if s[l][0] == 0
    l += 1
  end

  ans = [ans, sm].max
end

puts ans

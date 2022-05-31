n, k = gets.split.map(&:to_i)
s = gets.chomp.chars.slice_when{_1!=_2}.map{[_1[0],_1.size]}
i = 0
asum = s.map{|e| i += e[1]-1 }

l = 0
sm = 0
cnt = 0
ans = 0
m = s.size

m.times do |r|
  sm += s[r][1]
  cnt += 1 if s[r][0] == 'R'

  while k < cnt
    sm -= s[l][1]
    cnt -= 1 if s[l][0] == 'R'
    l += 1
  end

  ans = [ans, sm-1+(asum[-1]-asum[r])].max
end

l = 0
sm = 0
cnt = 0
m.times do |r|
  sm += s[r][1]
  cnt += 1 if s[r][0] == 'L'

  while k < cnt
    sm -= s[l][1]
    cnt -= 1 if s[l][0] == 'L'
    l += 1
  end

  ans = [ans, sm-1+(asum[-1]-asum[r])].max
end

puts ans

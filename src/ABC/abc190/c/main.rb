n, m = gets.split.map(&:to_i)
ab = Array.new(m){ gets.split.map{_1.to_i-1} }
k = gets.to_i
cd = Array.new(k){ gets.split.map{ _1.to_i-1 } }

i = 0
ans = 0
while i < 1 << k
  ball = Array.new(n, 0)
  cnt = 0
  j = 0
  while j < k
    if i & 1 << j == 0
      ball[cd[j][0]] = 1
    else
      ball[cd[j][1]] = 1
    end
    j+=1
  end
  ab.each do |a, b|
    if ball[a] == 1 && ball[b] == 1
      cnt += 1
      ans = cnt if ans < cnt
    end
  end
  i+=1
end

puts ans

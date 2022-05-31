n, k = gets.split.map(&:to_i)
c = gets.split.map(&:to_i)
color = {}
k.times do |i|
  color[c[i]] ||= 0
  color[c[i]] += 1
end

cnt = color.size
ans = cnt
i = 0
while k < n
  right = c[k]
  left = c[i]
  if color[right].nil?
    cnt+=1
    color[right] = 1
  else
    color[right] += 1
  end
  color[left] -= 1
  if color[left] == 0
    color.delete(left)
    cnt-=1
  end
  ans = cnt if ans < cnt
  i+=1
  k+=1
end

puts ans

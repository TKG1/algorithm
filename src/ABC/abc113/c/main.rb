n, m = gets.split.map(&:to_i)
py = []
m.times do |i|
  pi, yi = gets.split.map(&:to_i)
  py << [pi, yi, i]
end
py.sort_by!{|e| [e[0], e[1]]}

num = '0' * 12
cnt = 0
i = 0
ans = []

py.each do |pi, yi, j|
  nd = num.dup
  if pi != i
    i = pi
    cnt = 1
  else
    cnt += 1
  end
  xi = i.to_s.size
  xc = cnt.to_s.size

  nd[6-xi...6] = i.to_s
  nd[12-xc...12] = cnt.to_s

  ans[j] = nd
end

puts ans

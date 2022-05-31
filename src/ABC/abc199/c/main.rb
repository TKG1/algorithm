n = gets.to_i
s = gets.chomp
q = gets.to_i
flag = false # falseはもとの位置、trueは入れ替えた位置
q.times do |i|
  t, a, b = gets.split.map(&:to_i)
  a-=1
  b-=1
  if t == 1
    if flag
      a = (a+n) % (2*n)
      b = (b+n) % (2*n)
      s[a], s[b] = s[b], s[a]
    else
      s[a], s[b] = s[b], s[a]
    end
  else
    if flag
      flag = false
    else
      flag = true
    end
  end
end

if flag
  puts s[n, 2*n].concat(s[0, n])
else
  puts s
end

require 'set'
n = gets.to_i

num = ''
ans = Set.new
bit = 1
s = n.to_s
m = s.size
while bit <= (1 << m)
  j = 0
  num = ''
  while j < m
    if bit & (1 << j) != 0
      num += s[j]
    end
    j+=1
  end
  nn = num.to_i
  if nn != 0 && nn % 3 == 0
    ans << nn
  end
  bit+=1
end

maxnum = ans.max

if maxnum.nil?
  puts -1
else
  puts m - maxnum.to_s.size
end

n = read_line.to_i
s = read_line.chars
q = read_line.to_i

flag = false
q.times do
  t, a, b = read_line.split.map(&.to_i)
  a-=1; b-=1;
  if t == 1
    s[a], s[b] = s[b], s[a] if !flag
    a = (a+n) % (2*n)
    b = (b+n) % (2*n)
    s[a], s[b] = s[b], s[a] if flag
  else
    flag = flag ? false : true
  end
end

puts flag ? (s[n,n]+s[0,n]).join : s.join

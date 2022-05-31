n, k = read_line.split.map(&.to_i)

MEMO = Hash(Int64, Int64).new

def f(x, cnt, k)
  return x if cnt == k || x == 0

  if MEMO[x]?.nil?
    g2 = x.to_s.chars.sort
    g1 = g2.reverse
    g2.shift if g2[0] == '0'

    g1 = g1.join.to_i
    g2 = g2.join.to_i
    f(g1-g2, cnt+1, k)
  else
    f(MEMO[x], cnt+1, k)
  end
end

i = 1
x = n
ans = 0
while k > 0
  x = f(x, 0, i)
  k -= i
end

puts x

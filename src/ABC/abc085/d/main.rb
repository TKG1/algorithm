n, h = gets.split.map(&:to_i)
a = []
b = []
n.times do |i|
  a[i], b[i] = gets.split.map(&:to_i)
end
b.sort!
amax = a.max

ans = 0
(n-1).downto(0) do |i|
  if amax < b[i]
    ans += 1
    h -= b[i]
  end
  return puts ans if h <= 0
end

ans += ((h+amax-1)/amax)
puts ans

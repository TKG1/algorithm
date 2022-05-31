n = gets.to_i
a = gets.split.map(&:to_i)
b = Array.new(n+1, 0)

n.downto(1) do |i|
  cnt = 0
  j = i*2
  while j <= n
    cnt += 1 if b[j] == 1
    j += i
  end

  if a[i-1] == 0
    b[i] = cnt % 2 == 0 ? 0 : 1
  else
    b[i] = cnt % 2 == 0 ? 1 : 0
  end
end

ans = []
1.upto(n) do |i|
  ans << i if b[i] == 1
end
m = ans.size
puts m

if m != 0
  puts ans.join(' ')
end

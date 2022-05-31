n = gets.to_i
a = gets.split.map(&:to_i).sort.reverse

ans = a.shift
cnt = 0

2.upto(n-1) do
  ans += a[0]
  cnt += 1
  if cnt == 2
    a.shift
    cnt = 0
  end
end

puts ans

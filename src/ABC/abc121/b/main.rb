n, m, c = gets.split.map(&:to_i)
b = gets.split.map(&:to_i)
ans = 0
n.times do
  a = gets.split.map(&:to_i)
  cnt = 0
  m.times do |i|
    cnt += a[i] * b[i]
  end
  ans += 1 if cnt+c > 0
end

puts ans

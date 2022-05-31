n, x = gets.split.map(&:to_i)
l = gets.split.map(&:to_i)

cnt = 0
ans = 1
l.each do |i|
  cnt += i
  ans += 1 if cnt <= x
end

puts ans

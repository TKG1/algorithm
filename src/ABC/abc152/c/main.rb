n = gets.to_i
a = gets.split.map(&:to_i)

ans = 0
min = 10 ** 7
n.times do |i|
  min = [min, a[i]].min
  ans += 1 if a[i] == min
end

puts ans

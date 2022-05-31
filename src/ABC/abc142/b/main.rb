n, k = gets.split.map(&:to_i)
h = gets.split.map(&:to_i)

cnt = 0
n.times do |i|
  if k <= h[i]
    cnt += 1
  end
end
puts cnt

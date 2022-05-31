n = gets.to_i
X,Y=[],[]
hash = {}
n.times do |i|
  x, y = gets.split.map(&:to_i)
  X[i] = x
  Y[i] = y
  hash[x] ||= []
  hash[x] << y
end

cnt = 0
n.times do |i|
  ax, ay = X[i], Y[i]
  n.times do |j|
    next if i == j
    bx, by = X[j], Y[j]
    if ax < bx && ay < by
      if hash[ax].include?(by) && hash[bx].include?(ay)
        cnt += 1
      end
    end
  end
end

puts cnt

s = gets.chomp
n = s.size

d = 20
db = Array.new(d){Array.new(n, 0)}

# 一回の移動先を記録
n.times do |i|
  if s[i] == 'L'
    db[0][i] = i - 1
  else
    db[0][i] = i + 1
  end
end

# 2^dの移動先
(d-1).times do |i|
  n.times do |j|
    db[i+1][j] = db[i][db[i][j]]
  end
end

# 最終の到達位置
ans = Array.new(n, 0)
n.times do |i|
  ans[db[d-1][i]] += 1
end

puts ans.join(' ')

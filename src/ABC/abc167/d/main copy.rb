n, k = gets.split.map(&:to_i)
a = gets.split.map(&:to_i)
d = 60 # k回を2進数にしたときの桁数 10**18は60桁
max_n = 200005 # 頂点番号、nの最大は2*10**5 に少し余裕を見る
to = Array.new(d){Array.new(max_n, 0)} # to[i][j] jから2^i個先がどの頂点になるか
n.times do |i|
  to[0][i] = (a[i]-1)
end

(d-1).times do |i|
  n.times do |j|
    to[i+1][j] = to[i][to[i][j]]
  end
end

v = 0 # 最初の頂点
(d-1).downto(0) do |i| # 上からたどる
  l = (1 << i) # 2^i
  if l <= k # k回以内のとき
    v = to[i][v] # l個先の頂点
    k -= l
  end
end

puts v+1

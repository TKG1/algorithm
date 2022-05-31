# ワーシャルフロイド : グラフの全ての頂点の間の最短路を見つけるアルゴリズム。頂点vとした時、O(v^3)
h, w = gets.split.map(&:to_i)
c = Array.new(10){ gets.split.map(&:to_i) } # 頂点a,b間の辺のコスト, a == bのときは0, 辺が存在しないときはINF
a = Array.new(h){ gets.split.map(&:to_i) }

10.times do |k| # 経由する頂点
  10.times do |i| # 始点
    10.times do |j| # 終点
      # 頂点iから頂点jへの経路と頂点kを経由した場合と比較してコストの合計が小さい方を選ぶ
      c[i][j] = [c[i][j], c[i][k] + c[k][j]].min
    end
  end
end

ans = 0
h.times do |i|
  w.times do |j|
    ans += c[a[i][j]][1] if a[i][j] >= 0
  end
end

puts ans

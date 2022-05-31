n, k = gets.split.map(&:to_i)
a = gets.split.map(&:to_i)

s = []
ord = Array.new(n+1, -1) # 周期チェック
v = 1 # 最初の頂点
while ord[v] == -1 # まだ訪れていない
  ord[v] = s.size
  s << v
  v = a[v-1]
end
c = s.size - ord[v] # 周期
l = ord[v] # 周期外の長さ

if k < l
  puts s[k] # 周期外の時
else
  k -= l # 周期外の長さを引いて
  k %= c # 周期の長さのあまり == k回移動した先
  puts s[l+k]
end

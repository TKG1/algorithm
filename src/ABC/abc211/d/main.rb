# 幅優先探索と経路数
n, m = gets.split.map(&:to_i)
list = Array.new(n){Array.new}
mod = 10**9 + 7
m.times do
  a, b = gets.split.map(&:to_i)
  a-=1
  b-=1
  list[a] << b
  list[b] << a
end

dist = Array.new(n, -1)
dist[0] = 0
cnt = Array.new(n, 0)
cnt[0] = 1
que = []
que << 0

until que.empty?
  nex = que.shift
  unless list[nex].nil?
    list[nex].each do |i|
      if dist[i] == -1
        que << i
        dist[i] = dist[nex] + 1
        cnt[i] = cnt[nex]
      elsif dist[i] == dist[nex] + 1
        cnt[i] += cnt[nex]
        cnt[i] %= mod
      end
    end
  end
end

p cnt
puts cnt[n-1]

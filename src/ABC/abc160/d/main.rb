n, x, y = gets.split.map(&:to_i)
list = Array.new(n){[]}
(n-1).times do |i|
  list[i] << i+1
  list[i+1] << i
end
list[x-1] << y-1
list[y-1] << x-1

ans = Array.new(n, 0)
n.times do |i|

  dist = Array.new(n, -1)
  dist[i] = 0
  que = [i]
  while (v = que.shift)
    next if list[v].nil?

    list[v].each do |nex|
      next if dist[nex] != -1

      dist[nex] = dist[v] + 1
      que << nex
    end
  end

  dist.each do |j|
    next if j == 0
    ans[j] += 1
  end
end

puts ans[1..].map{|e| e/2 }

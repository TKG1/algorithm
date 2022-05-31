n, m = gets.split.map(&:to_i)
list = Array.new(n){[]}
m.times do
  a, b = gets.split.map(&:to_i)
  a-=1
  b-=1
  list[a] << b
  list[b] << a
end

ans = Array.new(n, 0)
ans[0] = 'Yes'

dist = Array.new(n, false)
que = [0]

while (v = que.shift)
  dist[v] = true

  unless list[v].nil?
    list[v].each do |nex|
      next if dist[nex]
      dist[nex] = true
      ans[nex] = v+1
      que << nex
    end
  end
end

if dist.include?(false)
  puts 'No'
else
  puts ans
end

N = gets.to_i
t,k,a=[0],[0],[0]
N.times do |i|
  t[i+1], k[i+1], *a[i+1] = gets.split.map(&:to_i)
end

visited = Array.new(N+1, false)

que = []
que << N #次行く場所
visited[N] = true
ans = 0

until que.empty?
  a1 = que.shift
  ans += t[a1]
  k[a1].times do |i|
    next if visited[a[a1][i]]
    que << a[a1][i]
    visited[a[a1][i]] = true
  end
end

puts ans

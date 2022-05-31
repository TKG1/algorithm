def dfs(i, visited, list, ans)
  return if visited[i]
  visited[i] = true
  ans << i+1
  list[i].sort.each do |nex|
    next if visited[nex]
    dfs(nex, visited, list, ans)
    ans << i+1
  end
end

n = gets.to_i
list = Array.new(n){Array.new}

(n-1).times do
  a, b = gets.split.map(&:to_i)
  a-=1
  b-=1
  list[a] << b
  list[b] << a
end

visited = Array.new(n, false)
ans = []

dfs(0, visited, list, ans)

puts ans.join(' ')

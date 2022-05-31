def dfs(x,list, visited)
  return if visited[x] || list[x].nil?
  visited[x] = true
  @ok = false if list[x].size > 2
  cnt = 0
  list[x].each do |nex|
    if visited[nex]
      cnt += 1
      @ok = false if cnt >= 2
      next
    end
    dfs(nex,list,visited)
  end
end

n, m = gets.split.map(&:to_i)
list = Array.new(n){Array.new}

1.upto(m) do
  a, b = gets.split.map(&:to_i)
  a-=1
  b-=1
  list[a] << b
  list[b] << a
end

visited = Array.new(n, false)
@ok = true

1.upto(n) do |i|
  next if visited[i]
  dfs(i,list,visited)
end

puts @ok ? 'Yes' : 'No'

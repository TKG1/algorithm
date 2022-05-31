struct Graph
  property vis : Array(Bool),
  g : Array(Array(Int32))

  getter n

  def initialize(@n : Int32)
    @vis = Array.new(@n, false)
    @g = Array.new(@n){[] of Int32}
  end

  def add_edge(a : Int32, b : Int32)
    g[a] << b
  end

  def dfs(v = 0)
    g[v].each do |nex|
      next if vis[nex]

      vis[nex] = true
      dfs(nex)
    end
  end

  def bfs(init = 0)
    dist = Array.new(n, 0)
    dist[init] = 1
    query = Deque.new(1, init)

    until query.empty?
      v = query.shift

      g[v].each do |nex|
        next if dist[nex] != 0
        dist[nex] = 1

        query << nex
      end
    end

    return dist.sum
  end
end

n, m = read_line.split.map(&.to_i)
g = Graph.new(n)
m.times do
  a, b = read_line.split.map(&.to_i)
  g.add_edge(a-1, b-1)
end

ans = 0i64
n.times do |i|
  ans += g.bfs(i)
end

puts ans

struct Graph
  property vis : Array(Int32),
  res : Array(Int32) = [] of Int32,
  g : Array(Array(Int32)),
  adjacencies : Array(Array(Tuple(Int32, Int32)))

  getter n

  def initialize(@n : Int32)
    @vis = Array.new(n, -1)
    @g = Array.new(n){[] of Int32}
    @adjacencies = Array.new(n){[] of Tuple(Int32, Int32)}
  end

  def add_edge(a : Int32, b : Int32)
    g[a] << b
    g[b] << a
  end

  def add_edge(to : Int32, from : Int32, inf : Int32)
    adjacencies[to] << {from,inf}
  end

  def dijkstra(v = 0)
    dist = Array.new(n, 1010101010)
    dist[v] = 0

    queue = PriorityQueue({Int32, Int32}).new {|x, y| x >= y}
    queue << {cost = 0, v}

    until queue.empty?
      d, v = queue.pop
      current_dist = dist[v]
      next if d > current_dist

      @adjacencies[v].each do |(nex, cost)|
        target_dist = dist[nex]

        if target_dist.nil? || target_dist > current_dist + cost
          dist[nex] = current_dist + cost
          queue << {current_dist, nex}
        end
      end
    end

    return dist
  end

  def dfs(v = 0)
    g[v].each do |nex|
      next if vis[nex]

      vis[nex] = true
      dfs(nex)
    end
  end

  def bfs(init = 0)
    mod = 10**9 + 7
    dist = Array.new(n, 0)
    dist[init] = 1
    vis[init] = 0
    query = Deque.new(1, init)

    until query.empty?
      v = query.shift

      g[v].each do |nex|
        if vis[nex] == -1
          vis[nex] = vis[v] + 1
          query << nex
        end
        dist[nex] = (dist[nex] + dist[v]) % mod if vis[v] < vis[nex]
      end
    end

    return dist
  end
end

n, m = read_line.split.map(&.to_i)
g = Graph.new(n)

m.times do
  a, b = read_line.split.map(&.to_i)
  g.add_edge(a-1, b-1)
end

puts g.bfs()[-1]

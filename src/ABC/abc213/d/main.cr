class PriorityQueue(T)
  getter heap : Array(T)

  def initialize
    initialize {|a, b| a <= b}
  end

  def initialize(&block : T, T -> Bool)
    @heap = Array(T).new
    @compare_proc = block
  end

  # Pushes value into the queue.
  def push(v : T)
    @heap << v
    index = @heap.size - 1
    while index != 0
      parent = (index - 1) // 2
      if @compare_proc.call(@heap[index], @heap[parent])
        break
      end
      @heap[parent], @heap[index] = @heap[index], @heap[parent]
      index = parent
    end
  end

  # Alias of `push`
  def <<(v : T)
    push(v)
  end

  # Pops value from the queue.
  def pop
    latest = @heap.pop
    return latest if empty?

    ret = @heap.first
    @heap[0] = latest
    index = 0
    while index * 2 + 1 < @heap.size
      child = if index * 2 + 2 < @heap.size && !@compare_proc.call(@heap[index * 2 + 2], @heap[index * 2 + 1])
        index * 2 + 2
      else
        index * 2 + 1
      end
      if @compare_proc.call(@heap[child], @heap[index])
        break
      end
      @heap[child], @heap[index] = @heap[index], @heap[child]
      index = child
    end
    ret
  end

  # Returns `true` if the queue is empty.
  delegate :empty?, to: @heap

  # Returns size of the queue.
  delegate :size, to: @heap
end

struct Graph
  property vis : Array(Bool),
  res : Array(Int32) = [] of Int32,
  g : Array(PriorityQueue(Int32)),
  adjacencies : Array(Array(Tuple(Int32, Int32)))

  getter n

  def initialize(@n : Int32)
    @vis = Array.new(n, false)
    @g = Array.new(n){ PriorityQueue(Int32).new{|x,y| x >= y}}
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
    x = g[v].size
    res << v+1
    x.times do
      nex = g[v].pop
      next if vis[nex]
      vis[nex] = true
      dfs(nex)
      res << v+1
    end
  end

  def bfs(init = 0)
    dist = Array.new(n, -1)
    dist[init] = 0
    query = Deque.new(1, init)

    until query.empty?
      v = query.shift

      g[v].each do |nex|
        next if dist[nex] != -1
        dist[nex] = dist[v] + 1

        query << nex
      end
    end

    return dist
  end
end

n = read_line.to_i
g = Graph.new(n)

(n-1).times do
  a, b = read_line.split.map(&.to_i)
  g.add_edge(a-1, b-1)
end

g.vis[0] = true
g.dfs()
puts g.res.join(" ")

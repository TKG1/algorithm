class PriorityQueue(T)
  getter heap : Array(T)

  def initialize
    initialize { |a, b| a <= b }
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

n, m = read_line.split.map(&.to_i)
g = Array.new(n) { [] of Tuple(Int64, Int64, Int32) }
m.times do |i|
  a, b, c = read_line.split.map(&.to_i64)
  a -= 1; b -= 1
  g[a] << {b, c, i}
  g[b] << {a, c, i}
end

INF = 1e18.to_i64
dist = Array.new(n, INF)
num = Array.new(n - 1, 0)
dist[0] = 0
q = PriorityQueue(Tuple(Int64, Int64)).new { |x, y| x >= y }
q << {0i64, 0i64}

while !q.empty?
  k, v = q.pop
  next if dist[v] < k

  g[v].each do |vi|
    nex, ki, i = vi
    if dist[nex] > dist[v] + ki
      dist[nex] = dist[v] + ki
      q << {dist[nex], nex}
      num[nex - 1] = i + 1
    end
  end
end

puts num.join(" ")

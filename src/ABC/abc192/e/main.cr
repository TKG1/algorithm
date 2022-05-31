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

n, m ,x, y = read_line.split.map(&.to_i)
x-=1;y-=1;

list = Array.new(n){[] of Tuple(Int32, Int32, Int32)}
m.times do
  a, b, t, k = read_line.split.map(&.to_i)
  a-=1;b-=1;
  list[a] << { b, t, k }
  list[b] << { a, t, k }
end

INF = 1e18.to_i64
dist = Array.new(n, INF)
q = PriorityQueue(Tuple(Int64, Int32)).new {|a, b| a >= b}
q << { 0i64, x }

while !q.empty?
  t, pos = q.pop
  next if dist[pos] < t

  list[pos].each do |nex|
    nv, nt, nk = nex
    nx = (t+nk-1)//nk * nk + nt
    if dist[nv] > nx
      dist[nv] = nx
      q << { nx, nv }
    end
  end
end

pp dist[y] == INF ? -1 : dist[y]

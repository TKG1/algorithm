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

q = read_line.to_i
pq = PriorityQueue(Int64).new{|a, b| a >= b}
cnt = 0i64

ans = [] of Int64
q.times do
  tx = read_line.split.map(&.to_i64)

  if tx[0] == 1
    pq << (tx[1]-cnt)
  elsif tx[0] == 2
    cnt += tx[1]
  else
    ans << (pq.pop + cnt)
  end
end

puts ans.join("\n")

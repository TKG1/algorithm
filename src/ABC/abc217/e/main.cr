q = read_line.to_i
q1 = Deque(Int32).new
q2 = PriorityQueue(Int32).new

q.times do
  tx = read_line.split.map(&.to_i)

  case tx[0]
  when 1
    x = tx[1]
    q1 << x
  when 2
    if q2.empty?
      puts q1.shift
    else
      puts q2.pop
    end
  else
    q1.size.times do
      q2 << q1.pop
    end
  end
end

class PriorityQueue(T)
  getter heap : Array(T)

  def initialize
    @heap = [] of T
  end

  def initialize(heap : Enumerable(T))
    @heap = heap.to_a.sort
  end

  # log( log n )
  def push(x : T)
    i = @heap.size
    return @heap = [x] if i == 0

    @heap << @heap[0]
    while i > 0
      par = ( i - 1 ) // 2
      break if @heap[par] <= x

      @heap[i] = @heap[par]
      i = par
    end
    @heap[i] = x
    self
  end

  # Alias of `push`
  def <<(x : T)
    push(x)
  end

  # log( log n )
  # return error if pop when @size == 0
  def pop : T
    ret = @heap[0]
    sz = @heap.size - 1
    x = @heap[sz]

    i = 0
    while (child1 = i * 2 + 1) < sz
      child2 = i * 2 + 2
      child1 = child2 if child2 < sz && @heap[child2] < @heap[child1]
      break if @heap[child1] >= x

      @heap[i] = @heap[child1]
      i = child1
    end

    @heap[i] = x
    @heap.delete_at(-1)
    ret
  end

  def pop? : T?
    @heap.empty? ? nil : pop
  end

  def top : T
    @heap[0]
  end

  def top? : T?
    @heap[0]?
  end

  def any?
    !@heap.empty?
  end

  def get
    @heap
  end

  delegate :empty?, to: @heap
  delegate :size, to: @heap
end

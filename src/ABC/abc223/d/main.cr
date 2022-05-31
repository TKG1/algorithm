alias LL = Int64

macro chmin(x, y); {{x}} = {{y}} if {{x}} > {{y}}; end
macro chmax(x, y); {{x}} = {{y}} if {{x}} < {{y}}; end
macro yn(x); {{x}} ? "Yes" : "No"; end

# ---------------------------------------------------- :)

n, m = read_line.split.map(&.to_i)
deg = Array.new(n, 0)
to = Array.new(n){[] of Int32}
m.times do
  a, b = read_line.split.map(&.to_i)
  a-=1; b-=1;
  to[a] << b
  deg[b] += 1
end

pq = PriorityQueue(Int32).new
n.times do |i|
  if deg[i] == 0
    pq << i
  end
end

ans = [] of Int32
while (v = pq.pop?)
  ans << v
  to[v].each do |i|
    deg[i] -= 1
    if deg[i] == 0
      pq << i
    end
  end
end

if ans.size != n
  puts -1
else
  puts ans.join(" "){|e| e+1}
end

class PriorityQueue(T)
  getter heap : Array(T)

  def initialize
    @heap = [] of T
  end

  def initialize(heap : Enumerable(T))
    @heap = heap.to_a.sort
  end

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

  def <<(x : T)
    push(x)
  end

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

  def any?
    !@heap.empty?
  end

  delegate :empty?, to: @heap
  delegate :size, to: @heap
end

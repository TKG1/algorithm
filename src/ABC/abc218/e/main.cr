require "../../../debug/src/debug.cr"

n, m = read_line.split.map(&.to_i64)
dsu = UnionFind.new(n)
pos = [] of Array(LL)
ans = 0i64
debug!(dsu)
es = Array.new(m) do
  a, b, c = read_line.split.map(&.to_i64)
  a-=1; b-=1
  if c < 0
    dsu.merge(a, b)
  else
    ans += c
    pos << [a, b, c]
  end
  [a, b, c]
end

pos.sort_by{|e| e[-1]}.each do |(a,b,c)|
  if !dsu.same(a, b)
    dsu.merge(a, b)
    ans -= c
  end
end

puts ans

class UnionFind
  getter parents : Array(Int64)
  getter sizes : Array(Int64)
  getter size : Int64

  def initialize(@size)
    @parents = Array.new(size, &.to_i64)
    @sizes = Array.new(size, 1_i64)
  end

  def leader(node)
    until @parents[node] == node
      @parents[node] = @parents[@parents[node]]
      node = @parents[node]
    end
    node
  end

  def merge(a, b)
    leader_a = leader(a.to_i64)
    leader_b = leader(b.to_i64)
    unless leader_a == leader_b
      if @sizes[leader_a] < @sizes[leader_b]
        leader_a, leader_b = leader_b, leader_a
      end
      @parents[leader_b] = leader_a
      @sizes[leader_a] += @sizes[leader_b]
    end
  end

  def same(a, b)
    leader(a) == leader(b)
  end

  def size(node)
    @sizes[leader(node)]
  end

  def groups
    groups = Hash(Int64, Set(Int64)).new {|h, k| h[k] = Set(Int64).new}
    @size.times do |i|
      groups[leader(i)] << i
    end
    groups.values.to_set
  end
end

class DSU
  getter parents : Array(Int64)
  getter sizes : Array(Int64)
  getter size : Int64

  def initialize(@size)
    @parents = Array.new(size, &.to_i64)
    @sizes = Array.new(size, 1_i64)
  end

  # Implements atcoder::dsu.leader(node).
  def leader(node)
    until @parents[node] == node
      @parents[node] = @parents[@parents[node]]
      node = @parents[node]
    end
    node
  end

  # Implements atcoder::dsu.merge(a, b).
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

  # Implements atcoder::dsu.same(a, b).
  def same(a, b)
    leader(a) == leader(b)
  end

  # Implements atcoder::dsu.size().
  def size(node)
    @sizes[leader(node)]
  end

  # Implements atcoder::dsu.groups().
  # This method returns `Set` instead of list.
  def groups
    groups = Hash(Int64, Set(Int64)).new {|h, k| h[k] = Set(Int64).new}
    @size.times do |i|
      groups[leader(i)] << i
    end
    groups.values.to_set
  end
end

n = read_line.to_i64
a = read_line.split.map(&.to_i64)

g = DSU.new(a.max+1)

l = 0
r = n - 1
while l < n
  g.merge(a[r], a[l])
  l += 1
  r -= 1
end

ans = 0
g.groups.each do |s|
  if s.size > 1
    ans += s.size - 1
  end
end

puts ans

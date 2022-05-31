alias LL = Int64

macro chmin(x, y); {{x}} = {{y}} if {{x}} > {{y}}; end
macro chmax(x, y); {{x}} = {{y}} if {{x}} < {{y}}; end
macro yn(x); {{x}} ? "Yes" : "No"; end

class UnionFind(T)
  getter parents : Array(T)
  getter sizes : Array(T)
  getter size : T

  def initialize(@size)
    @parents = Array(T).new(size, &.to_i)
    @sizes = Array(T).new(size, 1)
  end

  def leader(node)
    until @parents[node] == node
      @parents[node] = @parents[@parents[node]]
      node = @parents[node]
    end
    node
  end

  def merge(a, b)
    leader_a = leader(a)
    leader_b = leader(b)
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

  def groups(i = 0)
    (i ... @size).group_by{ |i| leader(i) }.values
  end

  def each_group(i = nil)
    if i.nil?
      groups.each{ |e| yield(e) }
    else
      groups.each{ |e| yield([i, e]); i+=1 }
    end
  end
end

# ---------------------------------------------------- :)

n, m = read_line.split.map(&.to_i)
g = Array.new(n){[] of Int32}
m.times do
  a, b = read_line.split.map(&.to_i)
  a-=1; b-=1;
  g[a] << b
end

un = UnionFind(Int32).new(n)
ans = Array.new(n, 0)
cnt = 0

(n-1).downto(0) do |i|
  ans[i] = cnt
  cnt += 1
  g[i].each do |j|
    if !un.same(i, j)
      un.merge(i, j)
      cnt -= 1
    end
  end
end

puts ans.join("\n")

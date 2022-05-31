struct Solve
  property dist : Array(Bool),
  cnt : Array(Int32),
  res : Array(Int32),
  g : Array(Array(Int32))

  getter n, c

  def initialize(@n : Int32, @c : Array(Int32))
    @dist = Array.new(@n, false)
    @g = Array.new(@n){[] of Int32}
    @cnt = Array.new(@c.max+1, 0)
    @res = [] of Int32
  end

  def add_edge(a : Int32, b : Int32)
    g[a] << b
    g[b] << a
  end

  def dfs(v = 0)
    res << v+1 if cnt[c[v]] == 0

    cnt[c[v]] += 1

    g[v].each do |nex|
      next if dist[nex]
      dist[nex] = true
      dfs(nex)
    end

    cnt[c[v]] -= 1
  end
end

n = read_line.to_i
c = read_line.split.map(&.to_i)
s = Solve.new(n, c)
(n-1).times do
  a, b = read_line.split.map(&.to_i)
  s.add_edge(a-1, b-1)
end

s.dist[0] = true
s.dfs
puts s.res.sort.join("\n")

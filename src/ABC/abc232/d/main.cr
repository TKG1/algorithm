alias LL = Int64

macro chmin(x, y); {{x}} = {{y}} if {{x}} > {{y}}; end
macro chmax(x, y); {{x}} = {{y}} if {{x}} < {{y}}; end
macro yn(x); {{x}} ? "Yes" : "No"; end

# ---------------------------------------------------- :)

struct Solve
  @h : Int32
  @w : Int32
  @c : Array(Array(Char))
  @vis : Array(Array(Bool))
  @ans : Int32

  getter h, w, c, vis, ans

  def initialize
    @h, @w = read_line.split.map(&.to_i)
    @c = Array.new(h+1){Array.new(w+1, '#')}
    h.times do |i|
      c[i][...w] = read_line.chars
    end
    @vis = Array.new(h+1){Array.new(w+1, false)}
    @ans = 0
  end

  def dfs(x, y, depth)
    vis[y][x] = true

    if @c[y+1][x] == '.' && !vis[y+1][x]
      dfs(x, y+1, depth+1)
    end

    if @c[y][x+1] == '.' && !vis[y][x+1]
      dfs(x+1, y, depth+1)
    end

    chmax(@ans, depth)
  end
end

s = Solve.new
s.dfs(0,0,0)
puts s.ans+1

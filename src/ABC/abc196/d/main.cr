class Solve
  @used : Array(Array(Bool))

  def initialize(@h : Int32, @w : Int32)
    @h = h
    @w = w
    @used = Array.new(h){Array.new(w, false)}
  end

  def dfs(x : Int32, y : Int32, a : Int32)
    if @h == y
      return a == 0 ? 1 : 0
    end
    return dfs(0, y+1, a) if @w == x
    return dfs(x+1, y, a) if @used[y][x]

    res = 0

    if y+1 < @h && !used[y+1][x] && 0 < a
      used[y][x] = used[y+1][x] = true
      res += dfs(x+1, y, a-1)
      used[y][x] = used[y+1][x] = false
    end

    if x+1 < @w && !used[y][x+1] && 0 < a
      used[y][x] = used[y][x+1] = true
      res += dfs(x+1, y, a-1)
      used[y][x] = used[y][x+1] = false
    end

    res += dfs(x+1, y, a)

    return res
  end
end

h, w, a, b = read_line.split.map(&.to_i)
s = Solve.new(h, w)
p s.dfs(0, 0, a)

macro chmin(x, y); {{x}} = {{y}} if {{x}} > {{y}}; end
macro chmax(x, y); {{x}} = {{y}} if {{x}} < {{y}}; end
macro yn(x); {{x}} ? "Yes" : "No"; end

# ---------------------------------------------------- :)

n, k = read_line.split.map(&.to_i)
t = Array.new(n+2){Array.new(n+2, -1)}
n.times do |i|
  t[i+1][1..n] = read_line.split("").map(&.to_i(16))
end

# 0を探す
# 各パズルを数え上げ
tc = Hash(Int32, Int32).new(0)
sx, sy = 0, 0
1.upto(n) do |i|
  1.upto(n) do |j|
    tc[t[i][j]] += 1
    if t[i][j] == 0
      sx = j
      sy = i
    end
  end
end

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

  def groups
    (0 ... @size).group_by{ |i| leader(i) }.values
  end

  def each_group(i = nil)
    if i.nil?
      groups.each{ |e| yield(e) }
    else
      groups.each{ |e| yield([i, e]); i+=1 }
    end
  end
end

class Solve
  # 上:0、右:1、下:2、左:3
  property dx : Array(Int32) = [0, 1, 0, -1]
  property dy : Array(Int32) = [-1, 0, 1, 0]
  property to : Hash(Int32, Array(Int32)) = {1 => [3], 2 => [0], 3 => [0, 3], 4 => [1], 5 => [1, 3], 6 => [0, 1], 7 => [0, 1, 3], 8 => [2], 9 => [2, 3], 10 => [0, 2], 11 => [0, 2, 3], 12 => [1, 2], 13 => [1, 2, 3], 14 => [0, 1, 2], 15 => [0, 1, 2, 3]}
  property vis : Array(Array(Bool))
  property dist : Array(Array(Bool))
  property move : Array(String) = [""]
  property cnt : Int32 = 1 # 連結成分
  property t : Array(Array(Int32))
  property n : Int32
  property sx : Int32 # 空白の位置
  property sy : Int32 # 空白の位置
  property mcnt : Int32 = 0 # 移動回数

  def initialize(@n, @t, @sx, @sy)
    @t = t.clone
    @sx = sx
    @sy = sy
    @mcnt = 0
    @move = [""]
    @vis = Array.new(n+2){Array.new(n+2, false)}
    @dist = Array.new(n+2){Array.new(n+2, false)}
  end

  def build()
    @dist = Array.new(n+2){Array.new(n+2, false)}
    @cnt = 1
  end

  def seach_puzzle(x : Int32)
    gx = 0; gy = 0;
    1.upto(n) do |i|
      1.upto(n) do |j|
        next if vis[i][j]
        if t[i][j] == x
          gx = j
          gy = i
          return [gx, gy]
        end
      end
    end
    return [gx, gy]
  end

  def dfs(cx : Int32, cy : Int32, bx : Int32, by : Int32, depth : Int32)
    dist[cy][xy] = true

    to[t[cy][cx]].each do |nex|
      x = cx + dx[nex]
      y = cy + dy[nex]

      next if t[y][x] == -1 || t[y][x] == 0
      next if bx == x && by == y
      if to[t[y][x]].includes?((nex+2)%4)
        if dist[y][x]
          return 0
        else
          dfs(x, y, cx, cy, dep+1)
        end
      end
    end


  end

  def check_conect(ans : Int32)
    lp = Set(Tuple(Int32, Int32)).new
    1.upto(n) do |i|
      1.upto(n) do |j|
        next if t[i][j] == 0 || dist[i][j]
          if dfs(j, i, -1, -1, 0) == -1

          end
        end
      end
    end
    return @cnt
  end

  def up()
    if t[sy-1][sx] != -1
      t[sy][sx], t[sy-1][sx] = t[sy-1][sx], t[sy][sx]
      move << (move[-1] + "U")
      @mcnt += 1
      @sy -= 1
    end
  end

  def right()
    if t[sy][sx+1] != -1
      t[sy][sx], t[sy][sx+1] = t[sy][sx+1], t[sy][sx]
      move << (move[-1] + "R")
      @mcnt += 1
      @sx += 1
    end
  end

  def down()
    if t[sy+1][sx] != -1
      t[sy][sx], t[sy+1][sx] = t[sy+1][sx], t[sy][sx]
      move << (move[-1] + "D")
      @mcnt += 1
      @sy += 1
    end
  end

  def left()
    if t[sy][sx-1] != -1
      t[sy][sx], t[sy][sx-1] = t[sy][sx-1], t[sy][sx]
      move << (move[-1] + "L")
      @mcnt += 1
      @sx -= 1
    end
  end

  def lroll(gx : Int32, gy : Int32)
    (gx-sx).abs.times do
      right()
      if t[sy+1][sx] != -1
        down()
        left()
        left()
        up()
      else
        up()
        left()
        left()
        down()
      end
    end
    right()
  end

  def rroll(gx : Int32, gy : Int32)
    (gx-sx).abs.times do
      left()
      if t[sy+1][sx] != -1
        down()
        right()
        right()
        up()
      else
        up()
        right()
        right()
        down()
      end
    end
    left()
  end

  def uroll(gx : Int32, gy : Int32, l = true)
    (gy-sy).abs.times do
      up()
      if l
        right()
        break if sy == gy && sx == gx
        down()
        left()
        up()
      else
        left()
        break if sy == gy && sx == gx
        down()
        right()
        up()
      end
    end
    down()
  end

  def droll(gx : Int32, gy : Int32, l = true)
    (gy-sy).abs.times do
      down()
      if l
        right()
        break if sy == gy && sx == gx
        up()
        left()
        down()
      else
        left()
        break if sy == gy && sx == gx
        up()
        right()
        down()
      end
    end
    up()
  end

  def set_left(gx : Int32, gy : Int32)
    # 同じyに移動する
    y = sy < gy ? 1 : -1
    while sy != gy
      y == -1 ? up() : down()
      if sy == gy + 1 && sx == gx
        left()
        up()
        break
      elsif sy == gy - 1 && sx == gx
        left()
        down()
        break
      end
      break if sy == gy && sx+1 == gx
    end

    # gxの左隣に移動する
    if sx+1 != gx
      if sx < gx
        m = gx - sx - 1
        x = 1
      else
        m = sx - gx
        x = -1
      end
      m.times do
        x == -1 ? left() : right()
      end
    end
  end

  def set_right(gx : Int32, gy : Int32)
    # 同じyに移動する
    if sy != gy
      m = (sy - gy + 1).abs
      y = sy < gy ? 1 : -1
      m.times do
        y == -1 ? up() : down()
        if sy == gy + 1 && sx == gx
          right()
          up()
          break
        elsif sy == gy - 1 && sx == gx
          right()
          down()
          break
        end
      end
    end

    # gxの右隣に移動する
    if sx > gx
      m = sx - gx - 1
      x = -1
    else
      m = gx - sx
      x = 1
    end
    m.times do
      x == -1 ? left() : right()
    end
  end
end

tt = t.clone
g = Solve.new(n, tt, sx, sy)
g.check_conect(0)

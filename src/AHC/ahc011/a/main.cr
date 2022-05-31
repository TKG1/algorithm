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

class UnionFind
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

class Solve
  # 上:0、右:1、下:2、左:3
  property dx : Array(Int32) = [0, 1, 0, -1]
  property dy : Array(Int32) = [-1, 0, 1, 0]
  property to : Hash(Int32, Array(Int32)) = {1 => [3], 2 => [0], 3 => [0, 3], 4 => [1], 5 => [1, 3], 6 => [0, 1], 7 => [0, 1, 3], 8 => [2], 9 => [2, 3], 10 => [0, 2], 11 => [0, 2, 3], 12 => [1, 2], 13 => [1, 2, 3], 14 => [0, 1, 2], 15 => [0, 1, 2, 3]}
  property vis : Array(Array(Bool))
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
  end

  def build()
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

  def check_conect(ans : Int32)
    un = UnionFind.new(n.to_i64*n*2)
    lp = [] of Tuple(Int32, Int32)
    1.upto(n) do |i|
      1.upto(n) do |j|
        next if t[i][j] == -1 || t[i][j] == 0
        to[t[i][j]].each do |nex|
          x = j + dx[nex]
          y = i + dy[nex]
          next if t[y][x] == -1 || t[y][x] == 0
          if to[t[y][x]].includes?((nex+2)%4)
            un.merge(i*n+j, y*n+x)
          else
            lp << {x, y}
          end
        end
      end
    end

    1.upto(n) do |i|
      1.upto(n) do |j|
        next if un.size(i*n+j) < ans

        lp.each do |(x, y)|
          if !un.same(i*n+j, y*n+x)
            chmax(@cnt, un.size(i*n+j).to_i)
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

ans = [0, 0] # 連結成分が一番多い移動を記録
pz = [8, 6, 10, 13, 12, 7, 1, 3, 9, 4, 5, 2, 15, 14, 11]
tt = t.clone
g = Solve.new(n, tt, sx, sy)
his = [""]
kk = [] of Int32
result = [] of Int32

1500.times do |i|
  if i == 0
    puz = pz.dup
  else
    puz = pz.shuffle
  end

  kk = puz.dup
  g = Solve.new(n, tt, sx, sy)
  a = 1
  b = 1
  i = 0
  while g.mcnt <= k && !puz.empty?
    break if a == n && b == n
    # パズルの位置を調べる
    if tc[puz[0]] != i && tc[puz[0]] > 0
      gx, gy = g.seach_puzzle(puz[0])
      if g.sx < gx
        g.set_left(gx, gy)
      else
        g.set_right(gx, gy)
      end

      # x軸移動
      if a < gx
        g.lroll(a, gy)
      elsif a > gx
        g.rroll(a, gy)
      end

      g.build()
      res = g.check_conect(ans[0])
      if ans[0] < res && g.mcnt <= k
        ans = [res, g.mcnt]
        his = g.move.dup
      end

      # y軸移動
      l = true
      l = false if g.t[g.sy][g.sx-1] == puz[0]
      if b < gy
        g.uroll(a, b, l)
      elsif b > gy
        g.droll(a, b, l)
      end

      g.vis[b][a] = true
      if a < n
        a += 1
      else
        a = 1
        b += 1
      end

      g.build()
      res = g.check_conect(ans[0])
      if ans[0] < res && g.mcnt <= k
        ans = [res, g.mcnt]
        his = g.move.dup
      end
    end

    i += 1
    puz.shift if tc[puz[0]] == i || tc[puz[0]] == 0
  end
end

puts his[ans[1]]

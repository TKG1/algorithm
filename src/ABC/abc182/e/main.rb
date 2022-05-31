def dfs_x(x, y, i)
  return if x < 0 || x >= @w
  return if @s[y][x] == 0

  dfs_x(x+i, y, i)
  @dx[y][x] = 1
end

def dfs_y(x, y, i)
  return if y < 0 || y >= @h
  return if @s[y][x] == 0

  dfs_y(x, y+i, i)
  @dy[y][x] = 1
end

@h, @w, n, m = gets.split.map(&:to_i)
@s = Array.new(@h){Array.new(@w, 1)}

n.times do |i|
  a, b = gets.split.map(&:to_i)
  a-=1; b-=1;
  @s[a][b] = 2
end

m.times do |i|
  c, d = gets.split.map(&:to_i)
  c-=1; d-=1;
  @s[c][d] = 0
end

@dx = Array.new(@h){Array.new(@w, 0)}
@dy = Array.new(@h){Array.new(@w, 0)}

@h.times do |i|
  @w.times do |j|
    if @s[i][j] == 2
      if @dx[i][j] == 0
        dfs_x(j, i, 1)
        dfs_x(j, i, -1)
        @dx[i][j] = 1
      end

      if @dy[i][j] == 0
        dfs_y(j, i, 1)
        dfs_y(j, i, -1)
        @dy[i][j] = 1
      end
    end
  end
end

ans = 0
@h.times do |i|
  @w.times do |j|
    next if @s[i][j] == 0
    next if @dx[i][j] == 0 && @dy[i][j] == 0

    ans += 1
  end
end

puts ans

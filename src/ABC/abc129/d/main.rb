def dfs_x(y, x, depth, i)
  if 0 > y || y >= @h || 0 > x || x >= @w || @s[y][x] == 35
    return @cnt += depth-1
  end

  dfs_x(y, x+i, depth+1, i)
  @yoko[y][x] = @cnt
end

def dfs_y(y, x, depth, i)
  if 0 > y || y >= @h || 0 > x || x >= @w || @s[y][x] == 35
    return @cnt1 += depth-1
  end

  dfs_y(y+i, x, depth+1, i)
  @tate[y][x] = @cnt1
end

@h, @w = gets.split.map(&:to_i)
@s = Array.new(@h){ gets.chomp.bytes }

@tate = Array.new(@h){[]}
@yoko = Array.new(@h){[]}

ans = 0
@h.times do |y|
  @w.times do |x|
    next if @s[y][x] == 35
    if @yoko[y][x].nil?
      @cnt = 0
      dfs_x(y, x, 0, 1)
      dfs_x(y, x, 0, -1)
    else
      @cnt = @yoko[y][x]
    end

    if @tate[y][x].nil?
      @cnt1 = 0
      dfs_y(y, x, 0, 1)
      dfs_y(y, x, 0, -1)
    else
      @cnt1 = @tate[y][x]
    end

    ans = [@cnt+@cnt1, ans].max

  end
end

puts ans+1

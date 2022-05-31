h, w = gets.split.map(&:to_i)
s = Array.new(h){ gets.chomp.chars }

dx = [0,0,1,-1]
dy = [1,-1,0,0]

ans = 0
h.times do |y|
  w.times do |x|
    next if s[y][x] == '#'

    dist = Array.new(h){Array.new(w, -1)}
    dist[y][x] = 0
    max = 0

    que = [[y, x]]
    while (yi, xi = que.shift)
      4.times do |i|
        dxi = xi + dx[i]
        dyi = yi + dy[i]

        if 0 <= dxi && dxi < w && 0 <= dyi && dyi < h && s[dyi][dxi] == '.' && dist[dyi][dxi] == -1

          que << [dyi, dxi]
          dist[dyi][dxi] = dist[yi][xi] + 1
          max = [max, dist[dyi][dxi]].max
        end
      end
    end

    ans = [ans, max].max
  end
end

puts ans

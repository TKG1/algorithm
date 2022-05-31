h, w = gets.split.map(&:to_i)
c = Array.new(h){ gets.chomp.chars } # n行m列の整数を2次元配列で受け取る

dx = [1, -1, 0, 0]
dy = [0, 0, 1, -1]
color = ('1'..'5').to_a

h.times do |y|
  w.times do |x|
    next if c[y][x] != '.'
    color.each do |j|
      flag = true
      4.times do |i|
        xx = x + dx[i]
        yy = y + dy[i]
        if 0 <= xx && xx < w && 0 <= yy && yy < h
          if c[yy][xx] == j
            flag = false
            break
          end
        end
      end
      c[y][x] = j if flag && c[y][x] == '.'
    end
  end
end

h.times do |i|
  puts c[i].join
end

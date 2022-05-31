h, w = gets.split.map(&:to_i)
s = Array.new(h){ gets.chomp.chars }

dx = [1, 0, 0, -1]
dy = [0, 1, -1, 0]

h.times do |y|
  w.times do |x|
    cnt = 0
    next if s[y][x] == '.'
    4.times do |i|
      xi = x + dx[i]
      yi = y + dy[i]
      cnt += 1 if 0 <= xi && xi < w && 0 <= yi && yi < h && s[yi][xi] == '#'
    end
    return puts 'No' if cnt == 0
  end
end
puts 'Yes'

a = Array.new(3){ gets.split.map(&:to_i) } # n行m列の整数を2次元配列で受け取る
n = gets.to_i
card = Array.new(3){Array.new(3, false)}
n.times do |i|
  b = gets.to_i
  3.times do |j|
    num = a[j].find_index(b)
    card[j][num] = true if num
  end
end

dx = [1, 0, 1, -1] # 右下斜め右下斜め左下
dy = [0, 1, 1, 1] # 右下斜め右下斜め左下

bingo = false
3.times do |i|
  3.times do |j|
    4.times do |k|
      x = j
      y = i
      cnt = 0
      3.times do
        if 0 <= y && y < 3 && 0 <= x && x < 3 && card[y][x]
          cnt += 1
        else
          break
        end
        x += dx[k]
        y += dy[k]
      end
      if cnt == 3
        bingo = true
      end
    end
  end
end

puts bingo ? 'Yes' : 'No'

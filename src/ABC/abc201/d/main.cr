h, w = read_line.split.map(&.to_i)
s = Array.new(h){read_line.chars.map{|e| e == '-' ? -1 : 1}}

inf = 1010101010
dp = Array.new(h){Array.new(w, -inf)}
dp[h-1][w-1] = 0

(h - 1).downto(0) do |y|
  (w - 1).downto(0) do |x|
    next if y == h - 1 && x == w - 1
    if y + 1 < h
      dp[y][x] = {dp[y][x], s[y+1][x] - dp[y+1][x]}.max
    end
    if x + 1 < w
      dp[y][x] = {dp[y][x], s[y][x+1] - dp[y][x+1]}.max
    end
  end
end

if dp[0][0] > 0
  puts "Takahashi"
elsif dp[0][0] < 0
  puts "Aoki"
else
  puts "Draw"
end

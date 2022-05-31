h, w = gets.split.map(&:to_i)
s = Array.new(h){ gets.chomp.bytes }
mod = 10**9+7
dx = Array.new(h+1){Array.new(w+1, 0)}
dy = Array.new(h+1){Array.new(w+1, 0)}
dxy = Array.new(h+1){Array.new(w+1, 0)}

dp = Array.new(h+1){Array.new(w+1, 0)}
dp[1][1] = 1

1.upto(h) do |i|
  1.upto(w) do |j|
    next if s[i-1][j-1] == 35 || i == 1 && j == 1

    dx[i][j] = (dx[i][j-1] + dp[i][j-1])%mod
    dy[i][j] = (dy[i-1][j] + dp[i-1][j])%mod
    dxy[i][j] = (dxy[i-1][j-1] + dp[i-1][j-1])%mod

    dp[i][j] = (dx[i][j] + dy[i][j] + dxy[i][j])%mod
  end
end
p dx
p dy
p dxy
p dp
puts dp[h][w]

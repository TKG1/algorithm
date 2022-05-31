alias LL = Int64

macro chmin(x, y); {{x}} = {{y}} if {{x}} > {{y}}; end
macro chmax(x, y); {{x}} = {{y}} if {{x}} < {{y}}; end
macro yn(x); {{x}} ? "Yes" : "No"; end

# ---------------------------------------------------- :)

n = read_line.to_i
x, y = read_line.split.map(&.to_i)
ab = Array.new(n){read_line.split.map(&.to_i)}

INF = 1010101010
dp = Array.new(n+1){Array.new(x+1){Array.new(y+1, INF)}}
dp[0][0][0] = 0

1.upto(n) do |i|
  xi, yi = ab[i-1]
  0.upto(x) do |j|
    0.upto(y) do |k|
      chmin(dp[i][j][k], dp[i-1][j][k])
      chmin(dp[i][{j+xi, x}.min][{k+yi, y}.min], dp[i-1][j][k]+1)
    end
  end
end

ans = dp[n][x][y]
ans = -1 if ans == INF
puts ans

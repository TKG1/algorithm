n = read_line.to_i
t = read_line.split.map(&.to_i)
w = t.sum
dp = Array.new(n+1){Array.new(w+1, 1010101010)}
dp[0][0] = 0

n.times do |i|
  w.times do |j|
    if dp[i][j] != 1010101010
      dp[i+1][j] = {dp[i+1][j], dp[i][j]}.min
      dp[i+1][j+t[i]] = {dp[i+1][j+t[i]], w - (j + t[i])}.min
    end
  end
end

ans = 101010101010
1.upto(w) do |i|
  next if dp[n][i] == 1010101010
  cnt = {dp[n][i], i}.max
  ans = {ans, cnt}.min
end
puts ans

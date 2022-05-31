n = read_line.to_i
ary = Array.new(n){read_line}
dp = Array.new(n+1){Array.new(2, 0i64)}
dp[0][0] = 1
dp[0][1] = 1

1.upto(n) do |i|
    if ary[i-1] == "AND"
        dp[i][0] += dp[i-1][0] * 2 + dp[i-1][1]
        dp[i][1] += dp[i-1][1]
    else
        dp[i][0] += dp[i-1][0]
        dp[i][1] += dp[i-1][0] + dp[i-1][1] * 2
    end
end

puts dp[n][1]

h, n = gets.split.map(&:to_i)
ab = Array.new(n){gets.split.map(&:to_i)}

dp = Array.new(h+1, 1010101010101010)
dp[0] = 0

0.upto(n-1) do |i|
  a, b = ab[i]
  0.upto(h) do |j|
    m = [j+a, h].min
    dp[m] = [dp[m], dp[j]+b].min
  end
end

puts dp[h]

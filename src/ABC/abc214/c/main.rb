n = gets.to_i
s = gets.split.map(&:to_i)
t = gets.split.map(&:to_i)

time = 0
dp = Array.new(n, 10**9 + 100)
i = 0
x = 0
while x <= n * 2 + 1
  dp[i] = [t[i], dp[i-1]+s[i-1]].min
  i+=1
  i%=n
  x+=1
end

puts dp

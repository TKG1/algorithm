n = read_line.to_i
money = [1]
2.upto(10) do |i|
  money << (money[-1]*i)
end

dp = Array(Int32).new(100000001, 10000000)
dp[0] = 0

def f(x : Int32, dp : Array(Int32), money : Array(Int32))
  return dp[x] if dp[x] != 10000000
  res = f(x-1, dp, money)+1

  money[1..].each do |i|
    break if i > x
    res = {res, f(x-i, dp, money)+1}.min
  end

  dp[x] = res
end

1.upto(n) do |i|
  f(i, dp, money)
end

puts dp[n]

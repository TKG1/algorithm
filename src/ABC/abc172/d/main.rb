n = gets.to_i

ans = 0
1.upto(n) do |i|
  ans += i*(n/i)*(1+(n/i)) / 2 # 約数の個数
end

puts ans

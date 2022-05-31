n = gets.to_i
mod = 10**9+7
ans = 1
1.upto(n) do |i|
  ans = (ans * i) % mod
end
puts ans

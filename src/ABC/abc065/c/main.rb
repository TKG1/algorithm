a, b = gets.split.map(&:to_i)
mod = 10**9+7
if (a-b).abs > 1
  puts 0
else
  ans = 1
  (1..a).each do |i|
    ans = (ans*i) % mod
  end
  (1..b).each do |i|
    ans = (ans*i) % mod
  end
  if a == b
    ans = (ans * 2) % mod
  end
  puts ans
end

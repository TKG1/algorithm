n = gets.to_i
c = gets.split.map(&:to_i).sort
mod = 10 ** 9 + 7

ans = 1

n.times do |i|
  ans = ans % mod * ( c[i] - i ) % mod
end

puts ans % mod

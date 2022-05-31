n = read_line.to_i
c = read_line.split.map(&.to_i64).sort
mod = 1i64*10**9+7

ans = 1i64
n.times do |i|
  ans = (ans * {0, c[i] - i}.max) % mod
end

puts ans

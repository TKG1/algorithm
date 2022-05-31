n, m = read_line.split.map(&.to_i)
a = read_line.split.map(&.to_i64)

list = Array.new(n){[] of Int32}
m.times do
  x, y = read_line.split.map(&.to_i)
  x-=1; y-=1;
  list[x] << y
end

ans = -20101010100
dp = Array(Int64).new(n, 20101010100)
n.times do |i|
  ans = {a[i] - dp[i], ans}.max
  list[i].each do |nex|
    dp[nex] = {dp[nex], dp[i], a[i]}.min
  end
end

puts ans

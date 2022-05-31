n = gets.to_i
x = gets.split.map(&:to_i)
ans = 10 ** 7
1.upto(100) do |i|
  cnt = 0
  0.upto(n-1) do |j|
    cnt += (i-x[j]) * (i-x[j])
  end
  ans = cnt if ans > cnt
end

puts ans

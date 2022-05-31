n, k = gets.split.map(&:to_i)
ans = 0

1.upto(n) do |i|
  q = 1.0 / n
  while i <= k-1
    i *= 2
    q /= 2
  end
  ans += q
end

puts ans

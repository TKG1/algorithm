n, k = gets.split.map(&:to_i)
ans = 0
1.upto(n) do |i|
  ans += [0, i-k].max * (n/i)
  ans += [0, (n%i)-k+1].max
end
ans = n * n if k == 0
puts ans

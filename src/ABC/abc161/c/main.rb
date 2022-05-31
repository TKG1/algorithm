n, k = gets.split.map(&:to_i)
if n >= k
  a = n % k
  ans = [a, (a-k).abs].min
else
  ans = [n, (k-n).abs].min
end

puts [n, ans].min

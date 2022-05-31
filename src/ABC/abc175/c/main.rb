x, k, d = gets.split.map(&:to_i)
x = x.abs
if x <= k*d
  k -= x/d
  puts k.even? ? x%d : (x%d-d).abs
else
  puts x - k*d
end

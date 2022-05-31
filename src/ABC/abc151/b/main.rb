n, k, m = gets.split.map(&:to_i)
a = gets.split.map(&:to_i)
point = [0, (n*m) - a.sum].max
if point > k
  puts -1
else
  puts point
end

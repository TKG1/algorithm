n = gets.to_i
a = gets.split.map(&:to_i)

ans = 0
0.upto(n-1) do |i|
  (i+1).upto(n-1) do |j|
    x = (a[i]-a[j]).abs
    ans = x if ans < x
  end
end
puts ans

n = gets.to_i
a = gets.split.map(&:to_i).sort

ans = 0
j = 0
(n-1).downto(0) do |i|
  ans = j.even? ? ans + a[i] : ans - a[i]
  j += 1
end
puts ans

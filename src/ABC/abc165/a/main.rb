k = gets.to_i
a, b = gets.split.map(&:to_i)
ans = false
(a..b).each do |i|
  ans = true if i % k == 0
end
puts ans ? 'OK' : 'NG'

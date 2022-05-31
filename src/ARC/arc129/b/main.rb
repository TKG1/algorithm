n = gets.to_i
lmax, rmin = gets.split.map(&:to_i)
ans = 0
puts ans
(n-1).times do
  l, r = gets.split.map(&:to_i)
  lmax = l if lmax < l
  rmin = r if rmin > r
  ans = [0, (lmax-rmin+1)/2].max
  puts ans
end

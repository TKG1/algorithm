n, k = gets.split.map(&:to_i)
a = Array.new(n){ gets.to_i }.sort
ans = 1010101010

l = 0
r = k-1
while r < n
  min = a[l]
  max = a[r]
  ans = max-min if ans > max-min
  r+=1
  l+=1
end

puts ans

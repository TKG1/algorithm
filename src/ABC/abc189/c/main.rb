n = gets.to_i
a = gets.split.map(&:to_i)

i = 0
ans = 0
while i < n
  j = i
  x = a[i]
  while j < n
    x = a[j] if x > a[j]
    break if x*(n-i) < ans
    m = x*(j-i+1)
    ans = m if ans < m
    j+=1
  end
  i+=1
end

puts ans

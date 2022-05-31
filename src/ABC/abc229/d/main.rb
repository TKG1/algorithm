s = gets.chomp.split('')
k = gets.to_i

y = [0] # .の累積和

s.size.times do |i|
  if s[i] == '.'
    y[i+1] = y[i] + 1
  else
    y[i+1] = y[i]
  end
end

l = 0
r = 0
ans = 0
while l < s.size
  while r < s.size && y[r+1] - y[l] <= k
    r+=1
  end
  cnt = r - l
  ans = cnt if ans < cnt
  l+=1
end

puts ans

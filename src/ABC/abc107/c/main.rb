n, k = gets.split.map(&:to_i)
x = gets.split.map(&:to_i)

ans = 0
cnt = 0
if x[0] < 0 && x[-1] < 0
  x << 0
  (n).downto(1) do |i|
    ans += (x[i-1]-x[i]).abs
    cnt += 1
    break if cnt == k
  end
elsif x[0] > 0 && x[-1] > 0
  x.unshift(0)
  (0).upto(n) do |i|
    ans += (x[i]-x[i+1]).abs
    cnt += 1
    break if cnt == k
  end
else
  ans = 101010101010101010
  i = 0
  j = k-1
  while j < n
    sum = 0
    left = x[i].abs
    right = x[j].abs
    if left < right
      sum += left*2+right
    else
      sum += right*2+left
    end
    ans = sum if ans > sum

    i+=1
    j+=1
  end
end

puts ans

n = gets.to_i
a = gets.split.map(&:to_i)
b = gets.split.map(&:to_i)

i = 0
asum = [0]
asum[1..] = a.map{|e| i+=e}
i = 0
bsum = [0]
bsum[1..] = b.map{|e| i+=e}

ans = 0
1.upto(n) do |i|
  cnt = asum[i] + (bsum[n]-bsum[i-1])
  ans = cnt if ans < cnt
end

puts ans

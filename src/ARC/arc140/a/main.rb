n, k = gets.split.map(&:to_i)
s = gets.chomp

ans = n
0.upto(n-1) do |i|
  next if n % (i+1) != 0
  ss = s.split('').each_slice(i+1).to_a
  ss = ss.transpose
  cnt = 0
  ss.size.times do |j|
    cnt += (ss[j].size - ss[j].tally.values.max)
  end
  break ans = [i+1, ans].min if cnt <= k
end

puts ans

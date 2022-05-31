n = gets.to_i
a = gets.split.map(&:to_i)

ans = 10101010
(-101..101).each do |i|
  cnt = 0
  a.each do |item|
    cnt += (i-item) * (i-item)
  end
  ans = cnt if ans > cnt
end

puts ans

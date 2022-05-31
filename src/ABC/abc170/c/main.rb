x, n = gets.split.map(&:to_i)
pi = gets.split.map(&:to_i)

cnt = 10 ** 9
ans = 0
(-101..101).each do |i|
  next if pi.include?(i)
  b = (x-i).abs
  if cnt > b
    cnt = b
    ans = i
  end
end

puts ans

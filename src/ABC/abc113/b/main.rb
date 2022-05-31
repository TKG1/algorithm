n = gets.to_i
t, a = gets.split.map(&:to_i)
h = gets.split.map(&:to_i)

ans = 0
ti = 1000001
j = 1
h.each do |i|
  x = t - i * 0.006
  if (x - a).abs < ti
    ti = (x - a).abs
    ans = j
  end
  j += 1
end

puts ans

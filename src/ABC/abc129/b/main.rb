n = gets.to_i
w = gets.split.map(&:to_i)
ans = 10101010

n.times do |i|
  a = w[0..i].sum
  b = w[i+1..n].sum
  ans = [(a-b).abs, ans].min
end

puts ans

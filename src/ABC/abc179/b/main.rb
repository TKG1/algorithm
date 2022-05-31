n = gets.to_i

ans = 0
cnt = 0
n.times do
  d, c = gets.split.map(&:to_i)
  cnt = d == c ? cnt + 1 : 0
  ans = [cnt, ans].max
end

puts ans >= 3 ? 'Yes' : 'No'

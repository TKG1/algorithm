n = gets.to_i
h = {}
n.times do |i|
  s, t = gets.chomp.split
  t = t.to_i
  if h[s].nil?
    h[s] = [t, i]
  end
end
cnt = 0
ans = 0
h.each_value do |v|
  t, i = v
  if cnt < t
    cnt = t
    ans = i + 1
  end
end

puts ans

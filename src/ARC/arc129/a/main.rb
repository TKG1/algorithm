n, l, r = gets.split.map(&:to_i)

ans = 0
bit = n.to_s(2).size
bit.times do |i|
  if n[i] == 1
    min = [l, 1<<i].max
    max = [r, (1<<(i+1))-1].min
    ans += [max-min+1, 0].max
  end
end

puts ans

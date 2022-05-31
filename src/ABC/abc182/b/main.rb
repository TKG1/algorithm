n = gets.to_i
a = gets.split.map(&:to_i)

ans = 0
c = 0
2.upto(a.max) do |i|
  cnt = 0
  a.each do |j|
    cnt += 1 if j % i == 0
    if c < cnt
      c = cnt
      ans = i
    end
  end
end

puts ans

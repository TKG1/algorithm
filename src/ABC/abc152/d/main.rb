n = gets.to_i

cnt = Array.new(10){Array.new(10, 0)}

('1'..n.to_s).each do |a|
  i = a[0].to_i
  j = a[-1].to_i

  cnt[i][j] += 1
end

ans = 0
0.upto(9) do |i|
  0.upto(9) do |j|
    ans += cnt[i][j] * cnt[j][i]
  end
end

puts ans

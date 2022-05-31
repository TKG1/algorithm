n, k = read_line.split.map(&.to_i)
ans = 0
1.upto(n) do |i|
  1.upto(k) do |j|
    ans += (i.to_s + "0" + j.to_s).to_i
  end
end
puts ans

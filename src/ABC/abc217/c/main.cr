n = read_line.to_i
pa = read_line.split.map(&.to_i)
ans = Array.new(n, 0)
n.times do |i|
  ans[pa[i]-1] = i+1
end

puts ans.join(" ")

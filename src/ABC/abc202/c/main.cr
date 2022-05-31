n = read_line.to_i
a = read_line.split.map(&.to_i)
b = read_line.split.map(&.to_i)
c = read_line.split.map(&.to_i)
bc = c.map{|e| b[e-1] }

at = a.tally
bct = bc.tally

ans = 0i64
1.upto(100000) do |i|
  if at[i]? && bct[i]?
    ans += 1i64 * at[i] * bct[i]
  end
end

puts ans

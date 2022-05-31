n = read_line.to_i
a = read_line.split.map(&.to_i)
at = a.tally

ans = 0i64
-200.upto(200) do |i|
  (i + 1).upto(200) do |j|
    if at[i]? && at[j]?
      x = (i - j).to_i64
      ans += (x * x) * at[i] * at[j]
    end
  end
end

puts ans

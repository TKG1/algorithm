n = read_line.to_i64
a = read_line.split.map(&.to_i64)
at = a.tally

ans = n*(n-1)//2
at.each_value do |v|
  if v > 1
    ans -= v.to_i64*(v-1)//2
  end
end

puts ans

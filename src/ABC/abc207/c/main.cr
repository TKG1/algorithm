n = read_line.to_i
s = [] of Tuple(Float64, Float64)
n.times do
  t, l, r = read_line.split.map(&.to_f)
  case t.to_i
  when 1
    s << {l, r}
  when 2
    s << {l, r-0.5}
  when 3
    s << {l+0.5, r}
  when 4
    s << {l+0.5, r-0.5}
  end
end

ans = 0
0.upto(n-1) do |i|
  0.upto(i-1) do |j|
    l1, r1 = s[i]
    l2, r2 = s[j]
    if (l1 <= r2 && r2 <= r1) || (l2 <= r1 && r1 <= r2)
      ans += 1
    end
  end
end

puts ans

s, t = read_line.split.map(&.to_i)

ans = 0
0.upto(100) do |a|
  0.upto(100) do |b|
    0.upto(100) do |c|
      if a+b+c <= s && a*b*c <= t
        ans += 1
      end
    end
  end
end

puts ans

n = read_line.to_i
a = read_line.split.map(&.to_i64)

ans = 1e18.to_i64
0.upto(1<<(n-1)) do |bit|
  tot = 0
  cur = a[0]
  1.upto(n-1) do |i|
    if (bit & 1 << (i-1)) != 0
      tot ^= cur
      cur = 0
    end
    cur |= a[i]
  end
  tot ^= cur
  ans = {tot, ans}.min
end

puts ans

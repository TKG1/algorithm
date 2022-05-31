n, k = read_line.split.map(&.to_i64)
a = read_line.split.map_with_index{|e, i| {e.to_i64, i}}.sort
x = k >= n ? k//n : 0i64
k -= x*n
cnt = Array(Int64).new(n, x)

while k > 0
  a.each do |(e, i)|
    cnt[i] += 1
    k -= 1
    break if k <= 0
  end
end

puts cnt.join("\n")

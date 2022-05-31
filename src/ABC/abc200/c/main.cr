n = read_line.to_i
a = read_line.split.map(&.to_i64)
cnt = Array(Int64).new(200, 0i64)
a.each{|e| cnt[e%200]+=1}
ans = 0i64

0.upto(199) do |i|
  ans += (cnt[i]*(cnt[i]-1)) // 2 if cnt[i]?
end

puts ans

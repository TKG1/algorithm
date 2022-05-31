n, m = read_line.split.map(&.to_i)
a = [] of Deque(Int32)
cnt = Array.new(n+1){[] of Int32}
q = Deque(Int32).new

m.times do |i|
  k = read_line.to_i
  a << Deque.new(read_line.split.map(&.to_i))

  x = a[-1][0]
  cnt[x] << i
  if cnt[x].size == 2
    q << x
  end
end

while !q.empty?
  x = q.pop
  cnt[x].each do |i|
    a[i].shift
    if !a[i].empty?
      ix = a[i][0]
      cnt[ix] << i
      if cnt[ix].size == 2
        q << ix
      end
    end
  end
end

puts a.each.all?{|e| e.empty? } ? "Yes" : "No"

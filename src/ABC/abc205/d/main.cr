n, q = read_line.split.map(&.to_i)
a = read_line.split.map(&.to_i64)
k = Array.new(q){read_line.to_i64}
c = [] of Int64
n.times do |i|
  c << (a[i] - i - 1)
end

p c
k.each do |k|
  r = c.bsearch_index{|e| e >= k }
  if r.nil?
    puts a[-1] + k - c[-1]
  else
    puts a[r] - (c[r]-k) - 1
  end
end

n, m = readline.split.map(&:to_i)
a = []
cnt = Array.new(n+1){[]}
q = []

m.times do |i|
  k = readline.to_i
  a << readline.split.map(&:to_i)

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

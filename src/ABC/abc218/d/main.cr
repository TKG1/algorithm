n = read_line.to_i
h = Hash(Int64, Array(Int64)).new
xy = Array.new(n) do |i|
  a, b = read_line.split.map(&.to_i64)
  h[a] ||= [] of Int64
  h[a] << b
  [a, b]
end

h.each_key do |k|
  h[k].sort!
end

ans = 0
0.upto(n-1) do |i|
  x1, y1 = xy[i]
  0.upto(n-1) do |j|
    x2, y2 = xy[j]
    next if i == j
    next if x1 >= x2 || y1 >= y2
    es = h[x2].bsearch_index{|e| e >= y1 }
    fs = h[x1].bsearch_index{|e| e >= y2 }

    if !es.nil? && !fs.nil?
      if h[x2][es] == y1 && h[x1][fs] == y2
        ans += 1
      end
    end
  end
end

puts ans

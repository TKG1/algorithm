h, w = gets.split.map(&:to_i)
ary = Array.new(h+2){Array.new(w+2, 0)}
h.times do |i|
  ary[i+1][1,w] = gets.chomp.chars
end

dx = [0,1,1,1,0,-1,-1,-1,]
dy = [1,1,0,-1,-1,-1,0,1]
ans = Array.new(h){Array.new(w, '#')}

1.upto(h) do |y|
  1.upto(w) do |x|
    next if ary[y][x] == '#'
    cnt = 0
    0.upto(7) do |i|
      xi = x + dx[i]
      yi = y + dy[i]
      cnt += 1 if ary[yi][xi] == '#'
    end
    ans[y-1][x-1] = cnt
  end
end

h.times do |i|
  puts ans[i].join
end

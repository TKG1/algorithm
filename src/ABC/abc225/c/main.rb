N, M = gets.split.map(&:to_i)
b = N.times.map{gets.split.map(&:to_i)}
xx = Array.new(N){Array.new(M)}
yy = Array.new(N){Array.new(M)}

N.times do |y|
  M.times do |x|
    xx[y][x] = ( b[y][x]+6 ) / 7
    yy[y][x] = ( b[y][x]-1 ) % 7 + 1
  end
end

ans = 'Yes'
N.times do |y|
  M.times do |x|
    ans = 'No' if 0 < y && xx[y][x] != xx[y-1][x] + 1
    ans = 'No' if 0 < x && yy[y][x] != yy[y][x-1] + 1
    ans = 'No' if 0 < y && xx[y][x] != xx[y][x-1]
    ans = 'No' if 0 < x && yy[y][x] != yy[y-1][x]
  end
end

puts ans

h, w, n = gets.split.map(&:to_i)
x, y = [], []
n.times do |i|
  y[i], x[i] = gets.split.map(&:to_i)
end

hx, hy = {} ,{}
x.uniq.sort.each.with_index do |i, index|
  hx[i] = index+1
end
y.uniq.sort.each.with_index do |i, index|
  hy[i] = index+1
end

n.times do |i|
  puts "#{hy[y[i]]} #{hx[x[i]]}"
end

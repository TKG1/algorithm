n, w = gets.split.map(&:to_i)
g = []
n.times do |i|
  s, t, pn = gets.split.map(&:to_i)
  g[s] ||= 0
  g[t] ||= 0
  g[s] += pn
  g[t] += (-pn)
end

cnt = 0
flag = true
g.each do |i|
  unless i.nil?
    cnt += i
  end
  flag = false if cnt > w
end

puts flag ? 'Yes' : 'No'

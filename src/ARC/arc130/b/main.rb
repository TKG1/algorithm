h, w, co, q = gets.split.map(&:to_i)
t,n,c = [], [], []
q.times do |i|
  t[i], n[i], c[i] = gets.split.map(&:to_i)
end

i = q-1
x = []
xn = {}
y = []
yn = {}
while i >= 0
  if t[i] == 1
    if yn[n[i]].nil?
      yn[n[i]] = 1
      y << [c[i], w-x.size]
    end
  else
    if xn[n[i]].nil?
      xn[n[i]] = 1
      x << [c[i], h-y.size]
    end
  end
  i-=1
end

color = Array.new(co, 0)
xy = x.concat(y)
xy.each do |c, cnt|
  c-=1
  color[c] += cnt
end

puts color.join(' ')

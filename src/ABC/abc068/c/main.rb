n, m = gets.split.map(&:to_i)
list = Array.new(n){[]}
m.times do
  a, b = gets.split.map(&:to_i)
  a-=1
  b-=1
  list[a] << b
  list[b] << a
end

que = [[0, 0]]
flag = false

while (v, d = que.shift)
  flag = true if v == (n-1)
  next if d == 2

  unless list[v].nil?
    list[v].each do |nex|
      que << [nex, d+1]
    end
  end
end

puts flag ? 'POSSIBLE' : 'IMPOSSIBLE'

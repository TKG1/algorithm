n, m = gets.split.map(&:to_i)
h = gets.split.map(&:to_i)
list = Array.new(n){[]}
m.times do |i|
  a, b = gets.split.map(&:to_i)
  a-=1
  b-=1
  list[a] << b
  list[b] << a
end

ans = 0
n.times do |i|
  a = h[i]
  cnt = [a]

  unless list[i].nil?
    list[i].each do |nex|
      a = h[nex] if a < h[nex]
      cnt << h[nex]
    end
    ans += 1 if h[i] == a && cnt.count(h[i]) == 1
  else
    ans += 1
  end
end

puts ans

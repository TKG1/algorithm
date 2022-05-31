n, m = gets.split.map(&:to_i)
ab_list = Array.new(n){Array.new(n, false)}
cd_list = Array.new(n){Array.new(n, false)}

m.times do |i|
  a, b = gets.split.map(&:to_i)
  a-=1
  b-=1
  ab_list[a][b] = ab_list[b][a] = true
end

m.times do |i|
  c, d = gets.split.map(&:to_i)
  c-=1
  d-=1
  cd_list[c][d] = cd_list[d][c] = true
end

ans = false
(0..(n-1)).to_a.permutation(n) do |per|
  ok = true
  per.size.times do |i|
    per.size.times do |j|
      if ab_list[i][j] != cd_list[per[i]][per[j]]
        ok = false
      end
    end
  end
  ans = true if ok
end

puts ans ? 'Yes' : 'No'

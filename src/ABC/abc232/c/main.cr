alias LL = Int64

macro chmin(x, y); {{x}} = {{y}} if {{x}} > {{y}}; end
macro chmax(x, y); {{x}} = {{y}} if {{x}} < {{y}}; end
macro yn(x); {{x}} ? "Yes" : "No"; end

# ---------------------------------------------------- :)

n, m = read_line.split.map(&.to_i)
ab = Array.new(n){Array.new(n, false)}
cd = Array.new(n){Array.new(n, false)}

m.times do
  a, b = read_line.split.map(&.to_i)
  a-=1; b-=1;
  ab[a][b] = ab[b][a] = true
end

m.times do
  c, d = read_line.split.map(&.to_i)
  c-=1; d-=1;
  cd[c][d] = cd[d][c] = true
end

(0...n).to_a.each_permutation do |pair|
  ok = true
  n.times do |i|
    n.times do |j|
      if ab[i][j] != cd[pair[i]][pair[j]]
        ok = false
      end
    end
  end
  if ok
    puts "Yes"
    exit
  end
end

puts "No"

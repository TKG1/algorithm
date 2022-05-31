alias LL = Int64

macro chmin(x, y); {{x}} = {{y}} if {{x}} > {{y}}; end
macro chmax(x, y); {{x}} = {{y}} if {{x}} < {{y}}; end
macro yn(x); {{x}} ? "Yes" : "No"; end

# ---------------------------------------------------- :)

n, m = read_line.split.map(&.to_i)
c = Array.new(n){[] of Int32}
b = Array.new(n) do |i|
  x = read_line.split.map(&.to_i)
  c[i] = x.map(&.% 7)
  x
end

flag = true
s = c[0][0]
n.times do |i|
  m.times do |j|
    if c[i][j] != ((s + j) % 7)
      flag = false
    end
    if c[i][j] == 0 && m != j+1
      flag = false
    end
    if i < n-1
      if b[i][j] + 7 != b[i+1][j]
        flag = false
      end
    end
    if j < m-1
      if b[i][j] + 1 != b[i][j+1]
        flag = false
      end
    end
  end
end

puts yn(flag)

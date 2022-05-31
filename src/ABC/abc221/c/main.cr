alias LL = Int64

macro chmin(x, y); {{x}} = {{y}} if {{x}} > {{y}}; end
macro chmax(x, y); {{x}} = {{y}} if {{x}} < {{y}}; end
macro yn(x); {{x}} ? "Yes" : "No"; end

# ---------------------------------------------------- :)

n = read_line.split("").map(&.to_i64)
ans = 0i64
m = n.size
n.each_permutation(m) do |per|
  1.upto(m-1) do |i|
    x, y = 0i64, 0i64
    0.upto(i-1) do |j|
      x = x * 10 + per[j]
    end

    i.upto(m-1) do |j|
      y = y * 10 + per[j]
    end

    chmax(ans, x*y)
  end
end

puts ans

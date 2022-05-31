alias LL = Int64

macro chmin(x, y); {{x}} = {{y}} if {{x}} > {{y}}; end
macro chmax(x, y); {{x}} = {{y}} if {{x}} < {{y}}; end
macro yn(x); {{x}} ? "Yes" : "No"; end

# ---------------------------------------------------- :)

n = read_line.to_i
s = read_line.split.map(&.to_i)

a = [] of LL
1.upto(300) do |i|
  1.upto(300) do |j|
    m = 4i64 * i * j + 3 * i + 3 * j
    break if m > 1000
    a << m
  end
end

ans = 0
s.each do |si|
  ans += 1 unless a.includes?(si)
end

puts ans

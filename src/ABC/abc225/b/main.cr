alias LL = Int64

macro chmin(x, y); {{x}} = {{y}} if {{x}} > {{y}}; end
macro chmax(x, y); {{x}} = {{y}} if {{x}} < {{y}}; end
macro yn(x); {{x}} ? "Yes" : "No"; end

# ---------------------------------------------------- :)

n = read_line.to_i
cnt = Array.new(n, 0)
(n-1).times do
  a, b = read_line.split.map(&.to_i)
  cnt[a-1] += 1
  cnt[b-1] += 1
end
puts yn(cnt.count(1) == n-1 && cnt.count(n-1) == 1)

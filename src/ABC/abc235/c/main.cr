alias LL = Int64
macro chmin(x, y); {{x}} = {{y}} if {{x}} > {{y}}; end
macro chmax(x, y); {{x}} = {{y}} if {{x}} < {{y}}; end
macro yn(x); {{x}} ? "Yes" : "No"; end

# ---------------------------------------------------- :)

n, q = read_line.split.map(&.to_i)
a = read_line.split.map(&.to_i)
h = Hash(Int32, Array(Int32)).new{ |h, k| h[k] = [] of Int32}
n.times do |i|
  h[a[i]] << (i+1)
end

q.times do
  x, k = read_line.split.map(&.to_i)
  if h[x]? && h[x][k-1]?
    puts h[x][k-1]
  else
    puts -1
  end
end

alias LL = Int64

macro chmin(x, y); {{x}} = {{y}} if {{x}} > {{y}}; end
macro chmax(x, y); {{x}} = {{y}} if {{x}} < {{y}}; end
macro yn(x); {{x}} ? "Yes" : "No"; end

# ---------------------------------------------------- :)

n, x = read_line.split.map(&.to_i64)
la = Array.new(n){read_line.split.map(&.to_i)}
def dfs(sum : LL, pos : Int32, x : LL, n : LL, la : Array(Array(Int32)))
  if pos == n
    return sum == x ? 1 : 0
  end

  a = la[pos][1..]
  c = 0
  a.each do |i|
    next if sum > (x//i)
    c += dfs(sum*i, pos+1, x, n, la)
  end

  return c
end

puts dfs(1i64, 0, x, n, la)

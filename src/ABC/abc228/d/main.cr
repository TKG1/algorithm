alias LL = Int64

macro chmin(x, y); {{x}} = {{y}} if {{x}} > {{y}}; end
macro chmax(x, y); {{x}} = {{y}} if {{x}} < {{y}}; end
macro yn(x); {{x}} ? "Yes" : "No"; end

# ---------------------------------------------------- :)

def f(x : LL, a : Array(LL), vis : Array(LL))
  return vis[x] = x if a[x] == -1

  c = f(vis[x], a, vis)
  vis[x] = c
end

q = read_line.to_i
n =  1i64 << 20
a = Array(LL).new(n+1, -1)
vis = Array(LL).new(n+1, -1)

ans = [] of LL
q.times do
  t, x = read_line.split.map(&.to_i64)
  case t
  when 1
    h = x % n
    h = f(h, a, vis) if a[h] != -1

    a[h] = x
    vis[h] = (h+1) % n
  else
    ans << a[x % n]
  end
end

puts ans.join("\n")

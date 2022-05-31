alias LL = Int64

macro chmin(x, y); {{x}} = {{y}} if {{x}} > {{y}}; end
macro chmax(x, y); {{x}} = {{y}} if {{x}} < {{y}}; end
macro yn(x); {{x}} ? "Yes" : "No"; end

# ---------------------------------------------------- :)

s = read_line
cnt = 0
ok = false
t = ["oxx", "xxo", "xox"]
m = {s.size, 3}.min
3.times do |i|
  if t[i][0,m] == s[0, m]
    ok = true
    j = 0
    while j < s.size
      if t[i][j%3] != s[j]
        ok = false
      end
      j += 1
    end
  end
end

puts yn(ok)

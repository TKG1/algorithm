alias LL = Int64

macro chmin(x, y); {{x}} = {{y}} if {{x}} > {{y}}; end
macro chmax(x, y); {{x}} = {{y}} if {{x}} < {{y}}; end
macro yn(x); {{x}} ? "Yes" : "No"; end

# ---------------------------------------------------- :)

s = read_line.chars
t = read_line.chars

flag = false
flag = true if s == t
(s.size-1).times do |i|
  s.swap(i, i+1)
  flag = true if s == t
  s.swap(i, i+1)
end

puts yn(flag)

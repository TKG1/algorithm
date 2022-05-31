alias LL = Int64

macro chmin(x, y); {{x}} = {{y}} if {{x}} > {{y}}; end
macro chmax(x, y); {{x}} = {{y}} if {{x}} < {{y}}; end
macro yn(x); {{x}} ? "Yes" : "No"; end

# ---------------------------------------------------- :)

s = read_line
t = read_line

ok = false
26.times do |i|
  c = String.build do |str|
    s.each_char do |w|
      x = ((w - 'a') + i) % 26
      str << 'a'+ x
    end
  end

  break ok = true if c == t
end

puts yn(ok)

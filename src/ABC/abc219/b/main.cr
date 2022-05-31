s = Array.new(4){read_line}

ans = ""
s[-1].each_char do |i|
  i = i.to_i - 1
  ans += s[i]
end

puts ans

# -------------------------------------------------------------------------

macro chmin(x, y); {{x}} = {{y}} if {{x}} > {{y}}; end
macro chmax(x, y); {{x}} = {{y}} if {{x}} < {{y}}; end

alias LL = Int64

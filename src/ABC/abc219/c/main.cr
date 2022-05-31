x = read_line
n = read_line.to_i
s = Array.new(n){read_line}

h = Hash.zip(x.chars, ('a'..'z').to_a)
t = [] of Tuple(String, Int32)
s.each_with_index do |w, i|
  t << {w.gsub(h), i}
end

t.sort.each do |(w, i)|
  puts s[i]
end

# -------------------------------------------------------------------------

macro chmin(x, y); {{x}} = {{y}} if {{x}} > {{y}}; end
macro chmax(x, y); {{x}} = {{y}} if {{x}} < {{y}}; end

alias LL = Int64

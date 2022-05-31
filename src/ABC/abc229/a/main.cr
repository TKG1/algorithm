alias LL = Int64

macro chmin(x, y); {{x}} = {{y}} if {{x}} > {{y}}; end
macro chmax(x, y); {{x}} = {{y}} if {{x}} < {{y}}; end
macro yn(x); {{x}} ? "Yes" : "No"; end

# ---------------------------------------------------- :)

s1 = read_line
s2 = read_line

if s1 == "#." && s2 == ".#"
  puts "No"
elsif s2 == "#." && s1 == ".#"
  puts "No"
else
  puts "Yes"
end

x = read_line.to_i

case
when x < 40
  puts 40 - x
when x < 70
  puts 70 - x
when x < 90
  puts 90 - x
else
  puts "expert"
end

# -------------------------------------------------------------------------

macro chmin(x, y); {{x}} = {{y}} if {{x}} > {{y}}; end
macro chmax(x, y); {{x}} = {{y}} if {{x}} < {{y}}; end

alias LL = Int64

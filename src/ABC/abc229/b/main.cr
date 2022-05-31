alias LL = Int64

macro chmin(x, y); {{x}} = {{y}} if {{x}} > {{y}}; end
macro chmax(x, y); {{x}} = {{y}} if {{x}} < {{y}}; end
macro yn(x); {{x}} ? "Yes" : "No"; end

# ---------------------------------------------------- :)

a, b = read_line.split.map(&.to_i64)
while a > 0 && b > 0
  if (a % 10) + (b % 10) >= 10
    puts "Hard"
    exit
  end
  a //= 10
  b //= 10
end
puts "Easy"

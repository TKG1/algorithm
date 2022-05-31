alias LL = Int64

macro chmin(x, y); {{x}} = {{y}} if {{x}} > {{y}}; end
macro chmax(x, y); {{x}} = {{y}} if {{x}} < {{y}}; end
macro yn(x); {{x}} ? "Yes" : "No"; end

# ---------------------------------------------------- :)

s = read_line
w = 0
s.each_char do |i|
  w += (i - '0')
end

x = 0
ans = String.build do |str|
  (s.size-1).downto(0) do |i|
    x += w
    w -= s[i] - '0'
    str << '0' + (x%10)
    x //= 10
  end
  while x != 0
    str << '0' + (x%10)
    x //= 10
  end
end

puts ans.reverse

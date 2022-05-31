require "big"
alias LL = Int64
macro chmin(x, y); {{x}} = {{y}} if {{x}} > {{y}}; end
macro chmax(x, y); {{x}} = {{y}} if {{x}} < {{y}}; end
macro yn(x); {{x}} ? "Yes" : "No"; end

# ---------------------------------------------------- :)

x = read_line.to_i64

ans = 2e18.to_i64
1.upto(9) do |i|
  (-9).upto(8) do |j|
    a = 0i64
    s = i
    while 0 <= s && s <= 9
      a = a*10+s
      break chmin(ans, a) if a >= x
      s += j
    end
  end
end

puts ans

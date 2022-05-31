require "big"
alias LL = Int64
macro chmin(x, y); {{x}} = {{y}} if {{x}} > {{y}}; end
macro chmax(x, y); {{x}} = {{y}} if {{x}} < {{y}}; end
macro yn(x); {{x}} ? "Yes" : "No"; end

# ---------------------------------------------------- :)

t = read_line.to_i64
def f(x)
  x*x+2*x+3
end

puts f(f(f(t)+t)+f(f(t)))

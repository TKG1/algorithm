alias LL = Int64

macro chmin(x, y); {{x}} = {{y}} if {{x}} > {{y}}; end
macro chmax(x, y); {{x}} = {{y}} if {{x}} < {{y}}; end
macro yn(x); {{x}} ? "Yes" : "No"; end

# ---------------------------------------------------- :)

n = read_line.to_i64

ans = 0i64
1i64.upto((n**(1/3)).to_i+1) do |a|
  a.upto(((n/a)**(1/2)).to_i+1) do |b|
    c = n // (a*b)
    if a <= b && b <= c
      if a*b*c <= n
        ans += c-b+1
      end
    end
  end
end

puts ans

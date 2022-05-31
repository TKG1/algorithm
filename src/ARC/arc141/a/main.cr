alias LL = Int64

macro chmin(x, y); {{x}} = {{y}} if {{x}} > {{y}}; end
macro chmax(x, y); {{x}} = {{y}} if {{x}} < {{y}}; end
macro yn(x); {{x}} ? "Yes" : "No"; end

# ---------------------------------------------------- :)

t = read_line.to_i
a = [] of Int64
1.upto(17) do |i|
  ("1".."9").each do |j|
    a << (j.to_s * (i+1)).to_i64
  end
end

a.sort!
t.times do
  s = read_line
  n = s.to_i64
  m = s.size

  cnt = [] of LL
  1i64.upto(m-1) do |i|
    next if m % i != 0
    c = s[0,i]
    k = (c * (m//(i))).to_i64
    if k <= n
      cnt << k
    else
      x = 0i64
      i.times do |j|
        x = ((c.to_i64 - 10**(i-j-1)).to_s * (m//i)).to_i64
        cnt << x if x <= n
      end
    end
  end
  o = a.bsearch_index{|e| e > n } || a.size-1
  puts [cnt.max, a[o-1]].max
end

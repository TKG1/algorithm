alias LL = Int64

macro chmin(x, y); {{x}} = {{y}} if {{x}} > {{y}}; end
macro chmax(x, y); {{x}} = {{y}} if {{x}} < {{y}}; end
macro yn(x); {{x}} ? "Yes" : "No"; end

# ---------------------------------------------------- :)

s = read_line.chars
k = read_line.to_i

n = s.size
l = 0
cnt = 0
ans = 0

n.times do |r|
  cnt += 1 if s[r] == '.'
  while cnt > k && l <= r
    cnt -= 1 if s[l] == '.'
    l += 1
  end

  chmax(ans, r-l+1)
end

puts ans

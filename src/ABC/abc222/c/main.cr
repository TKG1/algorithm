alias LL = Int64

macro chmin(x, y); {{x}} = {{y}} if {{x}} > {{y}}; end
macro chmax(x, y); {{x}} = {{y}} if {{x}} < {{y}}; end
macro yn(x); {{x}} ? "Yes" : "No"; end

# ---------------------------------------------------- :)

def judge(s, t, cnt, j)
  if s == 'G' && t == 'C' || s == 'C' && t == 'P' || s == 'P' && t == 'G'
    cnt[2*j][0] += 1
  elsif t == 'G' && s == 'C' || t == 'C' && s == 'P' || t == 'P' && s == 'G'
    cnt[2*j+1][0] += 1
  end
end

n, m = read_line.split.map(&.to_i)
s = Array.new(2*n){read_line}
cnt = Array.new(2*n){ |i| [0, i] }

i = 0
while i < m
  j = 0
  while j < n
    x = cnt[2*j][1]
    y = cnt[2*j+1][1]
    judge(s[x][i], s[y][i], cnt, j)
    j += 1
  end
  cnt.sort_by!{|e| [-e[0], e[1]]}
  i += 1
end

cnt.each do |(w, i)|
  puts i+1
end

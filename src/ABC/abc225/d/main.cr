alias LL = Int64

macro chmin(x, y); {{x}} = {{y}} if {{x}} > {{y}}; end
macro chmax(x, y); {{x}} = {{y}} if {{x}} < {{y}}; end
macro yn(x); {{x}} ? "Yes" : "No"; end

# ---------------------------------------------------- :)

n, q = read_line.split.map(&.to_i)
front = Array.new(n+1, -1)
back = Array.new(n+1, -1)

q.times do
  txy = read_line.split.map(&.to_i)
  case txy[0]
  when 1
    x, y = txy[1], txy[2]
    back[x] = y
    front[y] = x
  when 2
    x, y = txy[1], txy[2]
    back[x] = -1
    front[y] = -1
  else
    x = txy[1]
    while front[x] != -1
      x = front[x]
    end

    ans = [1, x]
    while back[x] != -1
      ans << back[x]
      x = back[x]
      ans[0] += 1
    end

    puts ans.join(" ")
  end
end

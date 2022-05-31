alias LL = Int64

macro chmin(x, y); {{x}} = {{y}} if {{x}} > {{y}}; end
macro chmax(x, y); {{x}} = {{y}} if {{x}} < {{y}}; end
macro yn(x); {{x}} ? "Yes" : "No"; end

# ---------------------------------------------------- :)

h, w = read_line.split.map(&.to_i)
sx, sy = -1, -1
gx, gy = -1, -1
s = Array.new(h) do |i|
  read_line.chars
end

h.times do |y|
  w.times do |x|
    if s[y][x] == 'o'
      if sx == -1 && sy == -1
        sx = x
        sy = y
      else
        gx = x
        gy = y
      end
    end
  end
end

puts (sx-gx).abs + (sy-gy).abs

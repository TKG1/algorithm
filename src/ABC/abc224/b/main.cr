alias LL = Int64

macro chmin(x, y); {{x}} = {{y}} if {{x}} > {{y}}; end
macro chmax(x, y); {{x}} = {{y}} if {{x}} < {{y}}; end
macro yn(x); {{x}} ? "Yes" : "No"; end

# ---------------------------------------------------- :)

h, w = read_line.split.map(&.to_i)
a = Array.new(h){read_line.split.map(&.to_i)}

flag = true
h.times do |i1|
  i1.times do |i2|
    w.times do |j1|
      j1.times do |j2|
        if a[i1][j1] + a[i2][j2] > a[i2][j1] + a[i1][j2]
          flag = false
        end
      end
    end
  end
end

puts yn(flag)

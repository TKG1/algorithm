n = read_line.to_i
s = Array.new(n){read_line.chars}
t = Array.new(n){read_line.chars}

def compress(a : Array(Array(Char)), n : Int32)
  x = Set(Int32).new
  y = Set(Int32).new

  n.times do |yi|
    n.times do |xi|
      if a[yi][xi] == '#'
        x << xi
        y << yi
      end
    end
  end

  ymin = y.min
  ymax = y.max
  xmin = x.min
  xmax = x.max

  res = Array.new(ymax-ymin+1){[] of Char}
  i = 0

  (ymin..ymax).each do |yi|
    res[i] = a[yi][xmin..xmax]
    i += 1
  end

  return res
end

def roll(a : Array(Array(Char)))
  return a.transpose.map(&.reverse)
end

sn = compress(s, n)
tn = compress(t, n)

flag = false
4.times do
  flag = true if sn == tn
  sn = roll(sn)
end

puts flag ? "Yes" : "No"

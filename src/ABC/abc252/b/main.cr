n, k = read_line.split.map(&.to_i)
a = read_line.split.map(&.to_i)
b = read_line.split.map(&.to_i)

amax = a.max
flag = false

n.times do |i|
  if a[i] == amax
    flag = true if b.includes?(i + 1)
  end
end

puts flag ? "Yes" : "No"

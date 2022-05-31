n = read_line.to_i
a = [] of Tuple(Int32, Int32)
b = [] of Tuple(Int32, Int32)
n.times do |i|
  ai, bi = read_line.split.map(&.to_i)
  a << {ai, i}
  b << {bi, i}
end

ans = 30101010
a.each do |(ai, i)|
  b.each do |(bi, j)|
    if i == j
      ans = {ans, ai + bi}.min
    else
      ans = {ans, {ai, bi}.max}.min
    end
  end
end

puts ans

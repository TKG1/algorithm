x, y = read_line.split.map(&.to_i)
if x == y
  ans = x
else
  ans = 0
  3.times do |i|
    if x != i && y != i
      ans = i
    end
  end
end

puts ans

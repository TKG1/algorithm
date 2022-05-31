a = read_line.split.map(&.to_i)

h = Hash.zip((1..26).to_a, ('a'..'z').to_a)
ans = ""
a.each do |i|
  ans += h[i]
end

puts ans

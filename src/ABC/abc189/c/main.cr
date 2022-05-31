n = read_line.to_i
a = read_line.split.map(&.to_i)

r = 0
ans = 0
while r < n
  ai = a[r]
  r.upto(n-1) do |i|
    ai = a[i] if ai > a[i]
    ans = {ai*(i-r+1), ans}.max
  end
  r += 1
end

puts ans

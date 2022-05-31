a, b, c = gets.split.map(&:to_i)
j = a
ans = false
100000.times do |i|
  if (j % b) == c
    ans = true
  end
  j += a
end
puts ans ? "YES" : "NO"

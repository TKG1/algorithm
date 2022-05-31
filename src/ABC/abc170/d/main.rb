n = gets.to_i
a = gets.split.map(&:to_i)
am = a.max
c = Array.new(am+1, false)
h = {}
a.each do |i|
  next if c[i]
  h[i] ||= 0
  h[i] += 1

  if h[i] > 1
    c[i] = true
  end

  j = i*2
  while j <= am
    c[j] = true
    j += i
  end
end

ans = 0
a.each do |i|
  ans += 1 if !c[i]
end

puts ans

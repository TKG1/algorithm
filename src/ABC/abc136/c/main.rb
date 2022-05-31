n = gets.to_i
h = gets.split.map(&:to_i)

ans = true
(n-1).downto(1) do |i|
  if h[i] < h[i-1]
    h[i-1] -= 1
  end
end

0.upto(n-2) do |i|
  next if h[i] <= h[i+1]
  ans = false
end

puts ans ? 'Yes' : 'No'

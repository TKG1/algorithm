n, k = gets.split.map(&:to_i)
h = gets.split.map(&:to_i).sort.reverse

ans = 0
h.each do |i|
  if k > 0
    k-=1
  else
    ans += i
  end
end

puts ans

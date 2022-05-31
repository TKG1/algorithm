n, k = gets.split.map(&:to_i)
a = gets.split.map(&:to_i)
at = a.tally.sort_by(&:last)

ans = 0
as = at.size
at.each do |i|
  num, cnt = i
  break if as <= k
  ans += cnt
  as -= 1
end
puts ans

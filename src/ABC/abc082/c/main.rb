n = gets.to_i
a = gets.split.map(&:to_i)
at = a.tally

ans = 0
at.each do |k, v|
  ans += (v-k) if k < v
  ans += v if k > v
end
puts ans

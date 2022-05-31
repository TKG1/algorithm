n, m = gets.split.map(&:to_i)
ab = Array.new(n){gets.split.map(&:to_i)}

ans = 0
ab.sort.each do |a, b|
  tmp = [b, m].min
  ans += a * tmp
  m -= tmp
end

puts ans

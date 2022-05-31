n = gets.to_i
a = gets.split.map(&:to_i).sort.reverse
at = a.tally

ans = 0
x = nil
y = 0
at.each do |key, value|
  m = 0
  if value >= 4
    m = key ** 2
  end
  m1 = 0
  if value >= 2
    x ||= key
    y = key
    m1 = x * y if x != y
  end

  ans = [ans, m, m1].max
end

puts ans

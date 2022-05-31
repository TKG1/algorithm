n = gets.to_i
a = gets.split.map(&:to_i)
q = gets.to_i

sum = a.sum
ha = a.tally
q.times do |i|
  b, c = gets.split.map(&:to_i)
  if ha[b]
    cnt = ha[b]
    ha[b] = 0
    ha[c] ||= 0
    ha[c] += cnt
    sum -= b*cnt
    sum += c*cnt
  end
  puts sum
end

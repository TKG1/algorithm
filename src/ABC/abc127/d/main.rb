n, m = gets.split.map(&:to_i)
a = gets.split.map(&:to_i).sort
bc = Array.new(m){ gets.split.map(&:to_i) }.sort_by{|x| -x[1]}

ans = 0
bc.each do |b, c|
  break if a[0].nil? || a[0] >= c
  b.times do |i|
    break if a[0].nil? || a[0] >= c

    a.shift
    ans += c
  end
end

puts ans+a.sum

n = gets.to_i
a = gets.split.map(&:to_i)
flag = true
a.each do |i|
  if i.even?
    unless i % 3 == 0 || i % 5 == 0
      flag = false
    end
  end
end
puts flag ? 'APPROVED' : 'DENIED'

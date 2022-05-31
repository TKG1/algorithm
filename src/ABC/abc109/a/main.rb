a, b = gets.split.map(&:to_i)

ans = false
(1..3).each do |i|
  if (a*b*i)%2 == 1
    ans = true
  end
end
puts ans ? 'Yes' : 'No'

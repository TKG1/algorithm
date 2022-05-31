n = gets.to_i
ans = 0
(1..n).each do |i|
  if i.odd?
    ans += Rational(1,n)
  end
end

puts ans.to_f

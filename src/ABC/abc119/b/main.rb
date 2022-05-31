n = gets.to_i
m = Array.new(n){ gets.chomp.split }
ans = 0
m.each do |x, u|

  if u == 'JPY'
    ans += x.to_f
  else
    ans += 380000.0 * x.to_f
  end
end

puts ans

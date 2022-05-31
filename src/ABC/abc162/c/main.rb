k = gets.to_i
ans = 0
1.upto(k) do |i|
  1.upto(k) do |j|
    a = i.gcd(j)
    1.upto(k) do |m|
      b = a.gcd(m)
      ans += b
    end
  end
end

puts ans

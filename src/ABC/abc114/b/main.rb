s = gets.chomp

ans = 10101010

(s.size-2).times do |i|
  x = s[i]
  ((i+1)..(i+2)).each do |j|
    x << s[j]
  end
  ans = (x.to_i-753).abs if (x.to_i-753).abs < ans
end

puts ans

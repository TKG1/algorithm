n = gets.to_i
h = gets.split.map(&:to_i)

ans = 1
1.upto(n-1) do |i|
  flag =  true
  0.upto(i-1) do |j|
    if h[j] > h[i]
      flag = false
    end
  end

  ans += 1 if flag
end

puts ans

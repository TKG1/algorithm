n = gets.to_i
l = gets.split.map(&:to_i)

cnt = 0
0.upto(n-1) do |i|
  a = l[i]
  (i+1).upto(n-1) do |j|
    b = l[j]
    (j+1).upto(n-1) do |k|
      c = l[k]
      next if a == b || b == c || c == a
      if a + b > c && a + c > b && b + c > a
        cnt += 1
      end
    end
  end
end

puts cnt

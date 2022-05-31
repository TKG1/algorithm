n = gets.to_i
xy = Array.new(n){ gets.split.map(&:to_i) }

0.upto(n-1) do |i|
  x1, y1 = xy[i]
  0.upto(i-1) do |j|
    x2, y2 = xy[j]
    a = x2 - x1
    b = y2 - y1
    0.upto(j-1) do |k|
      x3, y3 = xy[k]
      c = x3 - x1
      d = y3 - y1
      if (a*d) - (b*c) == 0
        puts 'Yes'
        exit
      end
    end
  end
end

puts 'No'

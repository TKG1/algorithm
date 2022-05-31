Q = gets.to_i
que = []
Q.times do |i|
  t, x, c = gets.split.map(&:to_i)
  if t == 1
    que << [x, c]
  else
    sum = 0
    while que.size > 0
      x1, c1 = que.shift
      if c1 > x
        sum += x1 * x
        que.unshift([x1, c1 - x])
        break
      elsif c1 == x
        sum += x1 * c1
        break
      else
        x = x - c1
        sum += x1 * c1
      end
    end
    puts sum
  end
end

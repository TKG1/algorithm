x = Array.new(5){ gets.to_i }

ans = 10101010
x.permutation(5) do |per|
  cnt = 0
  j = 0
  per.each do |i|
    next cnt += i if j == 4

    cnt += (i % 10 == 0) ? i : i + 10 - (i % 10)
    j += 1
  end

  ans = cnt if ans > cnt
end

puts ans

x = gets.split.map(&:to_i)

ans = false
1.upto((1<<4) - 1) do |bit|
  c1 = 0
  c2 = 0
  0.upto(3) do |j|
    (bit & (1 << j)) != 0 ? c1 += x[j] : c2 += x[j]
  end

  ans = true if c1 == c2
end

puts ans ? 'Yes' : 'No'

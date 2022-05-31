h, w = gets.split.map(&:to_i)
max = h
min = w

i = 1
ans = 10101001010101010
while i <= ((max+1)/2)
  a = min * i

  min_b = [((max-i) / 2) * min, (max-i+1) / 2 * min, a].min
  max_b = [((max-i) / 2) * min, (max-i+1) / 2 * min, a].max

  min_c = [(min / 2) * (max-i), (min+1) / 2 * (max-i), a].min
  max_c = [(min / 2) * (max-i), (min+1) / 2 * (max-i), a].max

  x = [(max_b-min_b).abs, (max_c-min_c).abs].min
  ans = x if x >= 0 && ans > x
  i += 1
end

i = 1
while i <= ((min+1)/2)
  a = max * i

  min_b = [((min-i) / 2) * max, (min-i+1) / 2 * max, a].min
  max_b = [((min-i) / 2) * max, (min-i+1) / 2 * max, a].max

  min_c = [(max / 2) * (min-i), (max+1) / 2 * (min-i), a].min
  max_c = [(max / 2) * (min-i), (max+1) / 2 * (min-i), a].max

  x = [(max_b-min_b).abs, (max_c-min_c).abs].min
  ans = x if x >= 0 && ans > x
  i += 1
end

puts ans

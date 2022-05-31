s = read_line

ans = 0
(0..9).to_a.each_repeated_permutation(4) do |per|
  t = "x" * 10
  per.each do |i|
    t = t.sub(i, "o")
  end

  flag = true
  10.times do |i|
    if s[i] == 'o'
      flag = false if t[i] != 'o'
    elsif s[i] == 'x'
      flag = false if t[i] == 'o'
    end
  end
  ans += 1 if flag
end

puts ans

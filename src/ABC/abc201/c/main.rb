s = gets.chomp.chars

cnt = 0
(0..9).to_a.repeated_permutation(4).each do |per|
  check = ['x'] * 10
  per.each do |i|
    check[i] = 'o'
  end

  flag = true
  10.times do |i|
    if check[i] == 'o' && s[i] == 'x'
      flag = false
    end
    if check[i] == 'x' && s[i] == 'o'
      flag = false
    end
  end
  cnt += 1 if flag
end

puts cnt

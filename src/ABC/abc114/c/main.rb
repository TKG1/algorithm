n = gets.to_i
ans = 0
m = n.to_s.size

(3..m).each do |i|
  [3,5,7].repeated_permutation(i).each do |pe|
    if pe.include?(3) && pe.include?(5) && pe.include?(7)
      if n >= pe.join.to_i
        ans += 1
      end
    end
  end
end

puts ans

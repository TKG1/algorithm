n = gets.chomp.split('').map(&:to_i)
L = n.size
ans = 0

n.permutation(L) do |per|
  i = 1
  while i < L
    l, r, j, k = 0, 0, 0, i
    while j < i
      l = l * 10 + per[j]
      j+=1
    end
    while k < L
      r = r * 10 + per[k]
      k+=1
    end
    ans = [ans, l * r].max
    i+=1
  end
end

puts ans

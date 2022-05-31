n, m = gets.split.map(&:to_i)
a = Array.new(n){ gets.chomp }
b = Array.new(m){ gets.chomp }

flag = false
i = 0
while i <= (n-m)
  x = 0

  while (n-x) >= m
    ind = a[i].index(b[0], x)
    if ind
      j = 1
      k = i
      break flag = true if j == m

      while j < m
        if a[k+1][ind...ind+m] == b[j]
          k += 1
          j += 1
        else
          break
        end

        break flag = true if j == m
      end
    else
      break
    end

    x = ind+1
  end

  break if flag
  i += 1
end

puts flag ? "Yes" : "No"

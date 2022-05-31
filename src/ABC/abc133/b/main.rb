n, d = gets.split.map(&:to_i)
X = Array.new(n){ gets.split.map(&:to_i) }

ans = 0
i = 0
while i < n
  j = i+1
  while j < n
    k = 0
    sum = 0
    while k < d
      sum += (X[i][k] - X[j][k]) ** 2
      k += 1
    end
    ans += 1 if Math.sqrt(sum).to_i == Math.sqrt(sum)
    j += 1
  end
  i += 1
end

puts ans

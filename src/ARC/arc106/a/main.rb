n = gets.to_i

a = []
x = 3
while x <= n
  a << x
  x *= 3
end

ans = [-1]
y = 5
i = 1
while y <= n
  cnt = n - y
  j = a.bsearch_index{ _1 >= cnt }
  if j && cnt == a[j]
    ans = [j+1, i]
    break
  end
  y *= 5
  i += 1
end

puts ans.join(' ')

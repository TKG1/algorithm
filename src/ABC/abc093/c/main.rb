a, b, c = gets.split.map(&:to_i).sort
ans = 0
while a != b || b != c || c != a
  if b != c
    a += 1
    b += 1
    ans += 1
  elsif a != b && a < b
    a += 2
    ans += 1
  elsif a > b && b == c
    b += 1
    c += 1
    ans += 1
  end
end

puts ans

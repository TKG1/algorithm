n = gets.to_i
s = gets.chomp

w = Array.new(n+1, 0)
e = Array.new(n+1, 0)

i = 1
s.chars do |c|
  if c == 'W'
    w[i] = w[i-1] + 1
    e[i] = e[i-1]
  else
    e[i] = e[i-1] + 1
    w[i] = w[i-1]
  end
  i += 1
end

ans = 101010101010
1.upto(n) do |i|
  cnt = 0

  cnt += e[n] - e[i]
  cnt += w[i-1]

  ans = cnt if ans > cnt
end

puts ans

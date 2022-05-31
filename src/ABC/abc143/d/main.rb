n = gets.to_i
l = gets.split.map(&:to_i).sort
lt = l.tally
sm = [0]
0.upto(2020) do |i|
  sm[i+1] = sm[i] + (lt[i+1] || 0)
end

ans = 0
n.times do |i|
  a = l[i]
  n.times do |j|
    next if i == j
    b = l[j]
    min = [a-b, b-a].max
    max = (a+b)
    cnt = sm[max-1]-sm[min]

    cnt -= 1 if min < a && a < max
    cnt -= 1 if min < b && b < max

    ans += [cnt, 0].max
  end
end

puts ans / 6

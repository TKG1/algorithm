n, m = gets.split.map(&:to_i)
ks = Array.new(m){gets.split.map(&:to_i)}
pm = gets.split.map(&:to_i)

ans = 0
(1 << n).times do |bit|
  flag = true

  m.times do |i|
    k, *s = ks[i]
    cnt = 0
    s.each do |si|
      si -= 1
      cnt += 1 if (bit & (1 << si)) != 0
    end
    break flag = false if cnt % 2 != pm[i]
  end

  ans += 1 if flag
end

puts ans

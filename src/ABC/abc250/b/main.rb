n, a, b = gets.split.map(&:to_i)
h = a*n
w = b*n
s = Array.new(h){Array.new(w, '.')}

h.times do |y|
  cnt1 = 0
  cnt2 = 0
  w.times do |x|
    if cnt1 == b
      s[y][x] = '#'
      cnt2 += 1
      if cnt2 == b
        cnt1 = 0
        cnt2 = 0
      end
    else
      cnt1 += 1
    end
  end
end

w.times do |x|
  cnt1 = 0
  cnt2 = 0
  h.times do |y|
    if cnt1 == a
      s[y][x] = '#'
      cnt2 += 1
      if cnt2 == a
        cnt1 = 0
        cnt2 = 0
      end
    else
      cnt1 += 1
    end
  end
end

w.times do |x|
  cnt1 = 0
  cnt2 = 0
  next if s[0][x] == '.'
  h.times do |y|
    if cnt1 == a
      s[y][x] = '.'
      cnt2 += 1
      if cnt2 == a
        cnt1 = 0
        cnt2 = 0
      end
    else
      cnt1 += 1
    end
  end
end

h.times do |i|
  puts s[i].join
end

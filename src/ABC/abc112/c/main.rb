n = gets.to_i
m = Array.new(n){ gets.split.map(&:to_i) } # n行m列の整数を2次元配列で受け取る

101.times do |cx|
  101.times do |cy|
    g = nil
    m.each do |x, y, h|
      next if h == 0
      hi = h + (cx-x).abs + (cy-y).abs
      g ||= hi
    end

    flag = true
    m.each do |x, y, h|
      if [(g - (cx-x).abs - (cy-y).abs), 0].max != h
        flag = false
      end
    end

    if flag
      puts [cx, cy, g].join(' ')
      return
    end
  end
end

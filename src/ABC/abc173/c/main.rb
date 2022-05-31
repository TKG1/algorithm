h, w, k = gets.split.map(&:to_i)
c = Array.new(h){ gets.chomp.chars }

ans = 0
(1<<h).times do |y|
  (1<<w).times do |x|
    cnt = 0
    h.times do |yi|
      next if (y & (1<<yi) == 0)
      w.times do |xi|
        next if (x & (1<<xi) == 0)
        cnt += 1 if c[yi][xi] == '#'
      end
    end
    ans += 1 if cnt == k
  end
end

puts ans

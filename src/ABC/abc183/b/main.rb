sx, sy, gx, gy = gets.split.map(&:to_f)
puts (gx-sx) * (sy/(sy+gy)) + sx

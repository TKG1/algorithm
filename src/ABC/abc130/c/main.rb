w, h, x, y = gets.split.map(&:to_r)

k = (w/2 == x && h/2 == y) ? 1 : 0
ans = [((w*h)/2).to_f, k]
puts ans.join(' ')

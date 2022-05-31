h, w = gets.split.map(&:to_i)
a = Array.new(h){ gets.chomp.chars }

x = []
y = []
h.times do |yi|
  y << yi if a[yi].count('.') == w
end
at = a.transpose

w.times do |xi|
  x << xi if at[xi].count('.') == h
end

h.times do |yi|
  next if y.include?(yi)
  ans = ''
  w.times do |xi|
    next if x.include?(xi)
    ans << a[yi][xi]
  end
  puts ans
end

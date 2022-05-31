n = gets.to_i
a = gets.split.map(&:to_i)
color = {}
cnt = 0
a.each do |i|
  case
  when 1 <= i && i <= 399
    color[0] = 1
  when 400 <= i && i <= 799
    color[1] = 1
  when 800 <= i && i <= 1199
    color[2] = 1
  when 1200 <= i && i <= 1599
    color[3] = 1
  when 1600 <= i && i <= 1999
    color[4] = 1
  when 2000 <= i && i <= 2399
    color[5] = 1
  when 2400 <= i && i <= 2799
    color[6] = 1
  when 2800 <= i && i <= 3199
    color[7] = 1
  when 3200 <= i
    cnt += 1
  end
end

ans = color.size == 0 && cnt > 0 ? 1 : color.size
puts "#{ans} #{color.size+cnt}"

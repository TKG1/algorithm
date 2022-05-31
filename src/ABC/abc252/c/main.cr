n = read_line.to_i
s = Array.new(n) { read_line.split("") }

ans = 1010101010
(0..9).each do |i|
  cnt = Hash(Int32, Int32).new(0)
  n.times do |j|
    x = s[j].index(i.to_s).not_nil!
    cnt[x] += 1
  end
  c = 0
  cnt.each do |k, v|
    c = {c, k + (10*(v - 1))}.max
  end

  ans = {ans, c}.min
end

puts ans

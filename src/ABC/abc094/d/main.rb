n = gets.to_i
a = gets.split.map(&:to_i).sort
amax = a.pop
x = amax / 2

r = 0
cnt = 101010101010
a.each do |ai|
  if (x-ai).abs < cnt
    cnt = (x-ai).abs
    r = ai
  end
  if amax.odd?
    if (x+1-ai).abs < cnt
      cnt = (x-ai).abs
      r = ai
    end
  end
end

puts [amax, r].join(' ')

a, b, w = read_line.split.map(&.to_i)
w *= 1000
i = a
min = 1010101010
max = 0

i = a
while i <= b
  break if max != 0

  j = (w // i) * i
  while j > 0
    x = w - j
    i.upto(b) do |k|
      if x % k == 0
        break max = {max, j // i + x // k}.max
      end
    end
    j -= i
  end
  i += 1
end

i = b
while i >= a
  break if min != 1010101010

  j = (w // i) * i
  while j > 0
    x = w - j
    i.downto(a) do |k|
      if x % k == 0
        break min = {min, j // i + x // k}.min
      end
    end
    j -= i
  end
  i -= 1
end

if max == 0 && min == 1010101010
  puts "UNSATISFIABLE"
else
  puts [min, max].join(" ")
end

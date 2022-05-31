w, a, b = gets.split.map(&:to_i)
if (a+w) < b || a > (b+w)
  puts [(a+w-b).abs, (a-(b+w)).abs].min
else
  puts 0
end

n = gets.to_i
a = gets.split.map(&:to_i).sort
if a[-1] < a[0...(n-1)].sum
  puts 'Yes'
else
  puts 'No'
end

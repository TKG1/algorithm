n, m = gets.split.map(&:to_i)
s = gets.split.map(&:to_i)
t = gets.split.map(&:to_i)
b = []

if (s - t).size <= 1
  puts 'No'
  exit
end

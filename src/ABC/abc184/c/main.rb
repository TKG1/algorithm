a, b = gets.split.map(&:to_i)
c, d = gets.split.map(&:to_i)

if a == c && b == d
  puts 0
  exit
end

if a + b == c + d || a - b == c - d || (a-c).abs + (b-d).abs <= 3
  puts 1
  exit
end

((d-2)..(d+2)).each do |y|
  ((c-2)..(c+2)).each do |x|
    if a + b == x + y || a - b == x - y || (a-x).abs + (b-y).abs <= 3
      puts 2
      exit
    end
  end
end

if (a + b) % 2 == 0 && (c + d) % 2 == 0
  puts 2
  exit
elsif (a + b) % 2 == 1 && (c + d) % 2 == 1
  puts 2
  exit
end

puts 3

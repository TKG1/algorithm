x = gets.to_i
(-1000..1000).each do |a|
  (-1000..1000).each do |b|
    if a*a*a*a*a - b*b*b*b*b == x
      puts "#{a} #{b}"
      exit
    end
  end
end

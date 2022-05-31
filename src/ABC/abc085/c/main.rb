n, y = gets.split.map(&:to_i)

0.upto(n) do |i|
  0.upto(n-i) do |j|

    z = n-i-j
    m = 10000*i + 5000*j + 1000*z
    if m == y
      puts [i, j, z].join(' ')
      exit
    end
  end
end

puts [-1, -1, -1].join(' ')

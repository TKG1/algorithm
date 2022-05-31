n, m = gets.split.map(&:to_i)
sc = Array.new(m){ gets.split.map(&:to_i) } # n行m列の整数を2次元配列で受け取る

ans = 10**7
0.upto(999) do |num|
  num = num.to_s
  next if num.size != n
  flag = true
  0.upto(m-1) do |j|
    s, c = sc[j]
    s-=1
    if num[s].to_i != c
      flag = false
    end
  end
  if flag
    puts num
    exit
  end
end

puts -1

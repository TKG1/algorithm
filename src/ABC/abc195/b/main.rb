A,B,W = gets.split.map(&:to_i)

max_n = 0
min_n = 10**7
1.upto(1000000) do |n|
  if (A * n <= 1000 * W && 1000 * W <= B * n)
    max_n = [max_n,n].max
    min_n = [min_n,n].min
  end
end

puts max_n == 0 ? 'UNSATISFIABLE' : "#{min_n} #{max_n}"

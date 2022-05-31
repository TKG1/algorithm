n, m, X, Y = gets.split.map(&:to_i)
x = gets.split.map(&:to_i)
y = gets.split.map(&:to_i)

ans = false
(X+1..Y).each do |i|
  flag = true
  x.each do |j|
    flag = false unless j < i
  end
  y.each do |k|
    flag = false unless k >= i
  end

  ans = true if flag
end

puts ans ? 'No War' : 'War'

N, m, t = gets.split.map(&:to_i)
ab = Array.new(m){ gets.split.map(&:to_i) }

n = N
now = 0
m.times do |i|
  a, b = ab[i]
  n = [n-(a-now), 0].max
  return puts 'No' if n == 0
  n = [n+(b-a), N].min
  n = [n-(t-b), 0].max if i == m-1
  return puts 'No' if n == 0
  now = b
end

puts 'Yes'

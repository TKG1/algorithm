# https://atcoder.jp/contests/abc241/tasks/abc241_b
N, M = gets.split.map(&:to_i)
A = gets.split.map(&:to_i)
B = gets.split.map(&:to_i)

M.times do |i|
  plan = B[i]
  is_do = false
  N.times do |j|
    if plan == A[j]
      A[j] = ''
      is_do = true
      break
    end
  end
  if !is_do
    puts 'No'
    exit
  end
end

puts 'Yes'

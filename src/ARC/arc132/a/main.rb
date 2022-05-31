N = gets.to_i
R = gets.split.map(&:to_i)
C = gets.split.map(&:to_i)
Q = gets.to_i
ans = []
Q.times do
  r, c = gets.split.map(&:to_i)
  r-=1
  c-=1
  if (N - R[r]) < C[c]
    ans << '#'
  else
    ans << '.'
  end
end

puts ans.join

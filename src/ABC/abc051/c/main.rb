x, y, tx, ty = gets.split.map(&:to_i)
ans = []

# sからtへ：一回目
(ty-y).times do
  ans << 'U'
end
(tx-x).times do
  ans << 'R'
end

# tからsへ：一回目
(ty-y).times do
  ans << 'D'
end
(tx-x).times do
  ans << 'L'
end

# sからtへ：二回目
ans << 'L'
(ty-y+1).times do
  ans << 'U'
end
(tx-x+1).times do
  ans << 'R'
end
ans << 'D'

# tからsへ：二回目
ans << 'R'
(ty-y+1).times do
  ans << 'D'
end
(tx-x+1).times do
  ans << 'L'
end
ans << 'U'

puts ans.join

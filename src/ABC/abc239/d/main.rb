# https://atcoder.jp/contests/abc239/tasks/abc239_d
require 'prime'
A, B, C, D = gets.split.map(&:to_i)

i = A
while i <= B
  j = C
  win = true
  while j <= D
    if (i + j).prime?
      win = false
      break
    end
    j+=1
  end
  if win
    puts 'Takahashi'
    exit
  end
  i+=1
end

puts 'Aoki'

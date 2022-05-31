a, b = gets.split.map(&:to_i)
s = gets.chomp
flag = true
flag = false if s[0...a].include?('-')
flag = false unless s[a] == '-'
flag = false if s[a+1..a+b].include?('-')
puts flag ? 'Yes' : 'No'

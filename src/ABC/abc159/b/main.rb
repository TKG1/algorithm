s = gets.chomp
n = s.size
flag = true
flag = false if s.reverse != s
flag = false if s[0,n/2].reverse != s[0,n/2]
flag = false if s[n/2+1,n].reverse != s[n/2+1,n]
puts flag ? 'Yes' : 'No'

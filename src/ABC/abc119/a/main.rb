require 'date'

s = gets.chomp
a = Date.parse(s)
b = Date.new(2019, 4, 30)

puts a <= b ? 'Heisei' : 'TBD'

require 'prime'
a, b = gets.split.map(&:to_i)
ab = a.gcd(b)
divs = Prime.prime_division(ab)
puts divs.size+1

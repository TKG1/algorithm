s = read_line

strong = true
strong = false if s.each_char.all?{|e| e == s[0]}
strong = false if s[1..].each_char.with_index(1).all?{|e, i| e.to_i == (s[i-1].to_i + 1) % 10}

puts strong ? "Strong" : "Weak"

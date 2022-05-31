n = gets.to_i
s = Array.new(n){ gets.chomp }.tally
puts ['AC x ',s['AC'] || 0 ].join
puts ['WA x ',s['WA'] || 0 ].join
puts ['TLE x ',s['TLE'] || 0 ].join
puts ['RE x ',s['RE'] || 0 ].join

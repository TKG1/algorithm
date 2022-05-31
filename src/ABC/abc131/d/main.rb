n = gets.to_i
ab = Array.new(n){ gets.split.map(&:to_i) }.sort_by{|x| x[1] }

cnt = 0
ans = true
ab.each do |a, b|
  cnt += a
  ans = false if cnt > b
end

puts ans ? 'Yes' : 'No'

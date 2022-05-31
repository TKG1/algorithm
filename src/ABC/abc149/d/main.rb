n, k = gets.split.map(&:to_i)
r, s, pp = gets.split.map(&:to_i)
t = gets.chomp.chars

grp = Array.new(k){[]}
n.times do |i|
  grp[i%k] << t[i]
end

ans = 0
grp.each do |si|
  si.size.times do |i|
    if i != 0
      if si[i] == si[i-1]
        next si[i] = 'x'
      end
    end

    case si[i]
    when 'r'
      ans += pp
    when 's'
      ans += r
    when 'p'
      ans += s
    end
  end
end

p ans

require 'set'

def f(x, s)
  return if s.size == 11

  @ans << s.to_i
  l = [x-1, 0].max
  r = [x+1, 9].min
  while l <= r
    si = s + l.to_s
    f(l, si)
    l+=1
  end
end

k = gets.to_i
@ans = Set.new
('1'..'9').each do |i|
  f(i.to_i, i)
end

puts @ans.sort[k-1]

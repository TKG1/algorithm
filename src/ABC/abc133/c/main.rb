l, r = gets.split.map(&:to_i)

mod = 2019
r = [r, l+mod].min
ans = 101010010101

l.upto(r) do |i|
  (i+1).upto(r) do |j|
    ans = [(i*j)%mod, ans].min
  end
end

puts ans

require 'prime'
a = Array.new(100010, 0)
Prime.each(100010) do |pri|
  if ((pri+1)/2).prime?
    a[pri] = 1
  end
end

i = 0
cnt = a.map{|e| i+=e }

q = gets.to_i
q.times do
  l, r = gets.split.map(&:to_i)
  puts cnt[r]-cnt[l-1]
end

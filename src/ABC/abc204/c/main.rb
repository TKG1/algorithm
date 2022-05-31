n, m = gets.split.map(&:to_i)
@list = Array.new(n){Array.new}
m.times do
  a, b = gets.split.map(&:to_i)
  a-=1
  b-=1
  @list[a] << b # 一方通行
end

def dfs(x)
  return if @visit[x]
  @visit[x] = true
  unless @list[x].nil?
    @list[x].each do |nex|
      dfs(nex)
    end
  end
end

ans = 0
n.times do |i|
  @visit = Array.new(n, false)
  dfs(i)
  ans += @visit.count(true)
end

puts ans

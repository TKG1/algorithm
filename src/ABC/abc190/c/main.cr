NM = read_line.split.map(&.to_i)
N = NM[0]
M = NM[1]
AB = Array.new(M){read_line.split.map(&.to_i)}
K = read_line.to_i
CD = Array.new(K){read_line.split.map(&.to_i)}

ANS = [] of Int32

def dfs(ary : Array(Int32), dep)
  if dep == K
    cnt = 0
    M.times do |i|
      a, b = AB[i]
      cnt += 1 if ary[a] == 1 && ary[b] == 1
    end
    return ANS << cnt
  end

  2.times do |i|
    ai = ary.clone
    ai[CD[dep][i]] = 1
    dfs(ai, dep+1)
  end
end

ary = Array.new(N+1, 0)
dfs(ary, 0)

puts ANS.max

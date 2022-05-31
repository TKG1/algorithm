class DSU
  def initialize(n)
    @n = n
    @parent_or_size = Array.new(n, -1)
    # root node: -1 * component size
    # otherwise: parent
  end

  attr_reader :parent_or_size, :n

  def merge(a, b)
    x = leader(a)
    y = leader(b)
    return x if x == y

    x, y = y, x if -@parent_or_size[x] < -@parent_or_size[y]
    @parent_or_size[x] += @parent_or_size[y]
    @parent_or_size[y] = x
  end
  alias unite merge

  def same?(a, b)
    leader(a) == leader(b)
  end
  alias same same?

  def leader(a)
    unless 0 <= a && a < @n
      raise ArgumentError.new, "#{a} is out of range (0...#{@n})"
    end

    @parent_or_size[a] < 0 ? a : (@parent_or_size[a] = leader(@parent_or_size[a]))
  end
  alias root leader
  alias find leader

  def size(a)
    -@parent_or_size[leader(a)]
  end

  def groups
    (0 ... @parent_or_size.size).group_by{ |i| leader(i) }.values
  end
end

UnionFind = DSU

n, m = gets.split.map(&:to_i)
a = gets.split.map(&:to_i)
b = gets.split.map(&:to_i)

list = UnionFind.new(n)

m.times do |i|
  c, d = gets.split.map(&:to_i)
  c-=1; d-=1
  list.merge(c, d)
end

list.groups.each do |g|
  c1 = 0
  c2 = 0
  g.each do |i|
    c1 += a[i]
    c2 += b[i]
  end

  if c1 != c2
    puts 'No'
    exit
  end
end

puts 'Yes'

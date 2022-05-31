alias LL = Int64
macro chmin(x, y); {{x}} = {{y}} if {{x}} > {{y}}; end
macro chmax(x, y); {{x}} = {{y}} if {{x}} < {{y}}; end
macro yn(x); {{x}} ? "Yes" : "No"; end

# copy by https://github.com/tomerun/CompLib/tree/master/crystal
# Randomized Binary Search Tree (RBST) は平衡二分探索木の一種。
# ランダムなノードを根にして、期待的に木の高さを O(log2⁡n)に抑えている。
class RBST(T)
  class Node(T)
    @left : Node(T) | Nil
    @right : Node(T) | Nil
    property :left, :right
    getter :val, :size

    def initialize(@val : T)
      @left = nil
      @right = nil
      @size = 1
    end

    # 木の高さを返す
    def height
      if left = @left
        lh = left.height
      else
        lh = 0
      end
      if right = @right
        rh = right.height
      else
        rh = 0
      end
      return {lh, rh}.max + 1
    end

    def fix_size
      @size = 1
      if left = @left
        @size += left.size
      end
      if right = @right
        @size += right.size
      end
    end

    def to_s(io : IO)
      to_s(io, 0)
    end

    def to_s(io : IO, level : Int32)
      if left = @left
        left.to_s(io, level + 1)
      end
      io << " " * level * 2 << @val << "\n"
      if right = @right
        right.to_s(io, level + 1)
      end
    end
  end

  # --------------------------------------

  @root : Node(T) | Nil

  def initialize
    @root = nil
    @rnd = Random.new
  end

  def insert(v : T)
    @root = insert(@root, v)
  end

  def insert(node : Node(T) | Nil, v : T) : Node(T)
    return Node(T).new(v) if !node
    if @rnd.rand(node.size + 1) == 0
      return insert_root(node, v)
    end
    if v < node.val
      node.left = insert(node.left, v)
    else
      node.right = insert(node.right, v)
    end
    node.fix_size
    return node
  end

  def insert_root(node : Node(T) | Nil, v : T) : Node(T)
    return Node(T).new(v) if !node
    if v < node.val
      node.left = insert_root(node.left, v)
      return rotate_right(node)
    else
      node.right = insert_root(node.right, v)
      return rotate_left(node)
    end
  end

  def rotate_right(node : Node(T)) : Node(T)
    top = node.left.not_nil!
    mid = top.right
    top.right = node
    node.left = mid
    node.fix_size
    top.fix_size
    return top
  end

  def rotate_left(node : Node(T)) : Node(T)
    top = node.right.not_nil!
    mid = top.left
    top.left = node
    node.right = mid
    node.fix_size
    top.fix_size
    return top
  end

  def clear
    @root = nil
  end

  def remove(v : T) : Bool
    new_root, found = remove(@root, v)
    if found
      @root = new_root
      return true
    else
      return false
    end
  end

  def remove(node : Node(T) | Nil, v : T) : Tuple(Node(T) | Nil, Bool)
    return {nil, false} if !node
    if v == node.val
      return {merge(node.left, node.right), true}
    elsif v < node.val
      new_child, found = remove(node.left, v)
      if found
        node.left = new_child
        node.fix_size
      end
    else
      new_child, found = remove(node.right, v)
      if found
        node.right = new_child
        node.fix_size
      end
    end
    return {node, found}
  end

  def merge(left : Node(T) | Nil, right : Node(T) | Nil) : Node(T) | Nil
    return right if !left
    return left if !right
    if @rnd.rand(left.size + right.size) < left.size
      left.right = merge(left.right, right)
      left.fix_size
      return left
    else
      right.left = merge(left, right.left)
      right.fix_size
      return right
    end
  end

  def find(v : T) : Node(T) | Nil
    cur = @root
    while cur
      if v == cur.val
        return cur
      elsif v < cur.val
        cur = cur.left
      else
        cur = cur.right
      end
    end
    return nil
  end

  def nth(n : Int32) : T
    # 0-indexed
    cur = @root
    while cur
      ln = cur.left
      lc = ln ? ln.size : 0
      if lc > n
        cur = cur.left
      elsif lc < n
        cur = cur.right
        n -= lc + 1
      else
        break
      end
    end
    if cur
      return cur.val
    else
      raise Exception.new("cannot fine")
    end
  end

  def rank(v : T) : Int32
    # 0-indexed, vより小さい値で、一番近いインデックスを返す
    cur = @root
    ret = 0
    while cur
      if v <= cur.val
        cur = cur.left
      else
        if left = cur.left
          ret += left.size
        end
        ret += 1
        cur = cur.right
      end
    end
    return ret
  end

  # vより小さく、一番大きな値を探す。見つからない場合は、nilを返す
  def lower(v : T) : T | Nil
    cur = @root
    ret = nil
    while cur
      if cur.val < v
        ret = cur.val
        cur = cur.right
      else
        cur = cur.left
      end
    end
    return ret
  end

  # v以上、一番小さいの値を返す。見つからない場合は、nilを返す
  def lower_bound(v : T) : T | Nil
    cur = @root
    ret = nil
    while cur
      if cur.val >= v
        ret = cur.val
        cur = cur.left
      else
        cur = cur.right
      end
    end
    return ret
  end

  # vより大きく、一番小さいの値を返す。見つからない場合は、nilを返す
  def upper_bound(v : T) : T | Nil
    cur = @root
    ret = nil
    while cur
      if cur.val > v
        ret = cur.val
        cur = cur.left
      else
        cur = cur.right
      end
    end
    return ret
  end

  def size
    if root = @root
      return root.size
    else
      return 0
    end
  end

  def height
    if root = @root
      root.height
    else
      0
    end
  end

  def to_s(io : IO)
    if root = @root
      root.to_s(io, 0)
    else
      io << "nil\n"
    end
  end

  # 先頭の値
  def begin
    nth(0)
  end

  # 末尾の値
  def end
    if root = @root
      nth(root.size - 1)
    else
      nil
    end
  end

  def count(v : T)
    rank(v+1) - rank(v)
  end
end

# ---------------------------------------------------- :)

n, k = read_line.split.map(&.to_i)
pn = read_line.split.map(&.to_i)
tr = RBST(Int32).new
x = pn[0...k].sort.[-k]

k.times do |i|
  tr.insert(pn[i])
end

ans = [x]
k.upto(n-1) do |i|
  v = pn[i]
  if v < x
    ans << x
  else
    tr.insert(v)
    x = tr.upper_bound(x).not_nil!
    ans << x
  end
end

puts ans.join("\n")

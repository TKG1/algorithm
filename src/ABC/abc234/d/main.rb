class PriorityQueue
  def initialize(array = [], &comp)
    @heap = array
    @comp = comp || proc { |x, y| x > y }
    heapify
  end

  attr_reader :heap

  # Push new element to the heap.
  def push(item)
    shift_down(0, @heap.push(item).size - 1)
  end

  alias << push
  alias append push

  # Pop the element with the highest priority.
  def pop
    latest = @heap.pop
    return latest if empty?

    ret_item = heap[0]
    heap[0] = latest
    shift_up(0)
    ret_item
  end

  # Get the element with the highest priority.
  def get
    @heap[0]
  end

  alias top get

  # Returns true if the heap is empty.
  def empty?
    @heap.empty?
  end

  private

  def heapify
    (@heap.size / 2 - 1).downto(0) { |i| shift_up(i) }
  end

  def shift_up(pos)
    end_pos = @heap.size
    start_pos = pos
    new_item = @heap[pos]
    left_child_pos = 2 * pos + 1

    while left_child_pos < end_pos
      right_child_pos = left_child_pos + 1
      if right_child_pos < end_pos && @comp.call(@heap[right_child_pos], @heap[left_child_pos])
        left_child_pos = right_child_pos
      end
      # Move the higher priority child up.
      @heap[pos] = @heap[left_child_pos]
      pos = left_child_pos
      left_child_pos = 2 * pos + 1
    end
    @heap[pos] = new_item
    shift_down(start_pos, pos)
  end

  def shift_down(star_pos, pos)
    new_item = @heap[pos]
    while pos > star_pos
      parent_pos = (pos - 1) >> 1
      parent = @heap[parent_pos]
      break if @comp.call(parent, new_item)

      @heap[pos] = parent
      pos = parent_pos
    end
    @heap[pos] = new_item
  end
end

N, K = gets.split.map(&:to_i)
A = gets.split.map(&:to_i)

k = A[0...K]
que = PriorityQueue.new{|x,y| x < y}
k.each{|i|que << i}
A[K..N].each do |i|
  if que.top >= i
    puts que.top
  else
    puts que.pop
    que << i
  end
end
puts que.pop

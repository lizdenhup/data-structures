class BinaryTree

  def initialize(data = nil)
    @root = Node.new(data, 0, 0)
  end

  def add_value()

  end
end

class Node
  def initialize(data, right, left)
    @data = data
    @right = right
    @left = left
  end
end

class Node
  attr_accessor :val, :next

  def initialize(val:, next: nil)
    @val = val
    @next = next
  end
end

# Pros: Can prepend items to the list in constant time
# Cons: Unlike arrays, no constant-time lookup for any particular node
#
class SinglyLinkedList

  def initialize
    @head = nil
  end

  def find_tail
    node = @head
    return node if !node.next
    return node if !node.next while (node == node.next)
  end

  def append_to_tail(val)
    if @head
      find_tail.next = Node.new(val)
    else
      @head = Node.new(val)
    end
  end

  def append_after(target_node, val)

  end

  def delete_node
  end

  def find_node(target_node)
    node = @head
    return false if !node.next
    return node if node.val == target_node.val
    while (node = node.next)
      return node if node.val == target_node.val
    end
  end
end

class DoublyLinkedList

end

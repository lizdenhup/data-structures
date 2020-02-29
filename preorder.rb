#!/usr/bin/env ruby

class TreeNode
  attr_accessor :val, :left, :right

  def initialize(val, left, right)
    @val = val
    @left = left
    @right = right
  end

  def self.recursive_preorder(node)
    return if !node
    puts root.val
    recursive_preorder(node.left)
    recursive_preorder(node.right)
  end

end

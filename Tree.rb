#Tree.rb

require 'TreeNode'

class Tree

	attr_accessor :head

	def initialize(node)
		@head = node
	end

	def min_height()
		min_height_rec(@head)
	end

	def min_height_rec(node)
		if node.lchild == nil
			return 0
		else
			array = []
			current = node.lchild
			while current != nil do
				array << min_height_rec(current)
			end
			return 1 + array.min
		end
	end
end
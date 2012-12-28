
require 'TreeNode'
require 'Tree'
require 'Stack'
require 'LinkedList'



def construct_children(node, max)
	stack = Stack.new
	current = node
	while current != nil do 
		stack.push(current.data)
		current = node.parent
	end
	while !stack.empty? do
		if !((node.data + stack.peek) <= max)
			node.add_child(node, node.data + stack.pop)
		else 
			stack.pop
		end
	end
end

def generate_power_tree(node, max)
	if node.data < max
		construct_children(node, max)
		current = node.lchild
		while current != nil do
			generate_power_tree(current, max)
			current = current.rchild
		end
	end
end



min_heights = 0
(1..200).each do |i|
	power_tree = Tree.new(TreeNode.new(nil, 1))
	generate_power_tree(power_tree.head, i)
	min_heights += power_tree.min_height
end


puts(min_heights)
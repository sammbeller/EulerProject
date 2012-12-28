#TreeNode.rb


class TreeNode
	attr_accessor :parent, :lchild, :rsib, :data


	def initialize(parent, data)
		@parent = parent
		@data = data
		@lchild = nil
		@rchild = nil
	end

	def add_child(data)
		if self.lchild == nil
			self.lchild = initialize(self, data)
		else
			current = self.lchild
			while current.rsib != nil do
				current = current.rsib
			end
			current.rsib = initialize(self, data)
		end
	end

end
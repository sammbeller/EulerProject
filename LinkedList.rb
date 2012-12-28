#LinkedList.rb

require 'ListNode'

class LinkedList

	attr_accessor :size, :head

	def initialize()
		@size = 0
		@head = nil
	end

	def empty()
		@size == 0
	end

	def add(data)
		new_node = ListNode.new(data)
		if self.empty
			@head = new_node
		else
			current = @head
			while current.next != nil do
				current = current.next
			end
			current.next = new_node
		end
		@size += 1
	end

	def insert(data, index)
		new_node = ListNode.new(data)
		if index == 0
			new_node.next = @head
			@head = new_node
		else
			count = 1
			current = @head
			while count != index do
				current = current.next
				count += 1
			end
			new_node.next = current.next
			current.next = new_node
		end
	end

	def delete(data)
		if @head.data == data
			@head = @head.next
		end
		current = @head
		while current.next != nil
			if current.next.data == data
				return data
			else
				current = current.next
			end
		end
	end

end
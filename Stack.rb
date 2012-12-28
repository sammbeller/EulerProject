#Stack.rb

require 'LinkedList'

class Stack
	attr_accessor :top

	def initialize()
		@top = nil
		@list = LinkedList.new()
	end

	def empty?()
		@top == nil
	end

	def pop
		@list.delete(0)
	end

	def push(data)
		@list.insert(data, 0)
	end

	def peek
		@list.head
	end

end
class TodoList
	def initialize(input_array)
		@item_list = []
		@item_list = input_array
	end

	def get_items
		@item_list
	end

	def add_item(item)
		@item_list << item
		@item_list
	end

	def delete_item(item)
		@item_list.delete(item)
	end

	def get_item(index)
		@item_list[index]
	end
end

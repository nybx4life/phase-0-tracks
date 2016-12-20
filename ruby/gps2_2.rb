# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps: 
  # Iterate over each word in the string
  # 	Assign each word as a key to the hash and set value to 1
  # print the list to the console using print method
# output: hash, with all values set to 1

# Method to add an item to a list
# input: list, item name, and optional quantity
# steps: Take the list and assign the item name as key and assign value as optional quantity parameter
# output: print list to console & state that an item was successfully added

# Method to remove an item from the list
# input: list, item name
# steps: Delete key from the list
# output: print hash again, state that the item was successfully deleted

# Method to update the quantity of an item
# input: list, item name, new quantity
# steps: Assign item name to have an updated value of new quantity
# output: print hash again, state that an item quantity was updated

# Method to print a list and make it look pretty
# input: list
# steps: Iterate through the list, printing each key, along with each value, in a pleasing way
# output: the shopping list, along with the corresponding quantities of each item



def create_list(input_string)
	shopping_list = {}
	input_string.split(' ').each { |item| shopping_list[item] = 1 }
	print_list(shopping_list)
	shopping_list
end

def print_list (list)
	p list
end

list_string = "carrots apples cereal pizza"
test_var = create_list(list_string)



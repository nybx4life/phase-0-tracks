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
 	list = {}
 	input_string.split(' ').each { |item| list[item] = 1 }
 	print_list(list)
 	list
end
 
def add_item(list, item_name, optional_quantity = 1)
 	list[item_name] = optional_quantity
 	puts "#{item_name} was added to the list."
 	print_list(list)
end
 
def remove_item(list, item_name)
 	list.delete(item_name)
 	puts "#{item_name} was deleted from the list."
 	print_list(list)
end
 
def update_quantity(list, item_name, new_quantity)
 	list[item_name] = new_quantity
 	puts "#{item_name}'s quantity was updated."
 	print_list(list)
end
  
def print_list (list)
 	puts "Current shopping list:"
 	list.each { |item, quantity| puts "#{item}, qty: #{quantity}" }
end
  
 list_string = "carrots apples cereal pizza"
 test_var = create_list(list_string)
 list_string = "Lemonade Tomatoes Onions Ice_Cream"
 test_list = create_list(list_string)
 update_quantity(test_list, "Lemonade", 2)
 update_quantity(test_list, "Tomatoes", 3)
 update_quantity(test_list, "Ice_Cream", 4)
 remove_item(test_list, "Lemonade")
 update_quantity(test_list, "Ice_Cream", 1)
 print_list(test_list)
 
 # So I did learn a lot about how to actually structure pseudocode on this challenge, and maybe how specific
 # to get at certain times, or what terminology to use, and how to really just pseudo code in general. Being
 # inexperienced with pseudocode, I've definitely seen a lot of grey area with it, and this cleared a lot of 
 # that up.
 
 # Using an array for this challenge would suck. You'd have to keep track of the item & quantity in indexes.
 # When calling on the array to modify the data, it just would not be a very smooth process, and difficult
 # to keep track of what item is at what index, along with where that items quantity is stored in the index.
 # A hash on the other hand is perfect for this exercise. It allows the item name to be the key, and the quantity
 # to be the value. It makes modifying & accessing the data much easier.
 
 # A method returns its last evaluated expression, and there is only one return value per method. 
 # So if the last evaluated expression is a string, an array, or a hash,
 # that would be its return value. We saw a good example of this with the create_list method, where if 
 # print_list(list) was the last line of that method, the return value would've been what that method evaluated
 # to, so by adding in just the return value we desired on the last line of that method, we then changed what
 # the last evaluated expression of that method would be, therefore changing the return value of that method.
 
 # It would appear that you can pass any type of object into a method as an argument. Strings, arrays, variables
 # hashes. Here we passed in strings, integers, and hashes all as arguments.
 
 # You can pass information between methods by calling methods and assigning that methods return value
 # as a variable, and then using that variable as an argument to another method. You can also call a method within
 # another method, whereby you can pass the new method you're calling any local information since it is inside
 # of the other method.
 
 # How to pseudocode was solified during this challenge, and getting repitition on passing information
 # between methods helped to make that more clear in my mind too. Although I don't think we've covered it in 
 # the material yet, using recursion is still confusing to me, and I'm hoping we do some work on that soon.
 # I do believe there is a way within this update quantity method to ask if any other quantities want to be
 # updated, and if so, to call itself again, though I can't quite figure out how to properly do it.
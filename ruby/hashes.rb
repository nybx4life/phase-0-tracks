# initialize hash
# ask the user a question for their input, convert to appropriate data type
# put the proper data type into the hash
# print all the data from the hash out

# tell the user if they want to update any field, to enter a key, or done if not
# if the user types in done, just print the hash and end the program

# if user enters a key, ask them for a new value to replace the old one
# Convert the new value to the proper data type by checking the entered key
# Convert the key into a symbol
# Enter the new value into the hash

# initialize hash
client_data = {
	name: nil,
	age: nil,
	number_children: nil,
	child_proof: nil,
	decor_theme: nil
}

# ask the user a question for their input, convert to appropriate data type,
# and put the proper data type into the hash
puts "What is your name:"
client_data[:name] = gets.chomp

puts "how old are you?"
client_data[:age] = gets.chomp.to_i

puts "how many children to you have?"
client_data[:number_children] = gets.chomp.to_i

puts "Does your home need to be child-proofed? (yes/no)"
if gets.chomp == "yes"
	client_data[:child_proof] = true
else 
	client_data[:child_proof] = false
end

puts "What type of decor theme do you want?"
client_data[:decor_theme] = gets.chomp

p client_data

# tell the user if they want to update any field, to enter a key, 
# otherwise to enter "none"
puts "If you'd like to change any of these answers, 
just enter the key name of the field you want to change now, 
otherwise, enter \"none\"."
update_key = gets.chomp
if update_key == "done"
	p client_data
else
	puts "What new value would you like to put into #{update_key}?"
	new_value = gets.chomp

	#Setting the key to the proper int data type if necessary
	if update_key == "age" || update_key == "number_children"
		new_value = new_value.to_i

	#Setting the proper boolean data type if child proof is getting updated
	elsif update_key == "child_proof"
		if new_value == "yes"
			new_value = true
		else
			new_value = false
		end
	end
	#Finally converting the update key to a symbol, so that
	#we can use it to update our hash
	update_key = update_key.to_sym
	client_data[update_key] = new_value
	p client_data
end





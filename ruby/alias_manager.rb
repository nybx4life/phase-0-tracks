# Write a method that takes a vowel as input, and switches it to the next vowel
# Write a method that takes any consonant as input, and switches it to the next consonant

# Get spy's real name as input
# Change it into an array of two, with first & last name being the two indexes
# Swap the two values of the indexes
# make new arrays with first and last name as all chars
# Iterate through each char, and swap them out

def next_vowel (vowel)
	map = "aeiou"
	map = map.split('')
	vowel = map.index(vowel)
	# handling the corner case, allows for map to change & it would still wrap around
	if vowel == map.length - 1
		vowel = map[0]
	else
		vowel = map[vowel + 1]
	end
end

def next_consonant (consonant)
	map = "bcdfghjklmnpqrstvwxyz"
	map = map.split('')
	consonant = map.index(consonant)
	# handling the corner case, allows for map to change & it would still wrap around
	if consonant == map.length - 1
	  consonant = map[0]
	else 
	  consonant = map[consonant + 1]
	end
end

# initialize original name & fake name arrays to store the data
orig_name_array = []
fake_name_array = []

# initialize counter variable which will allow original name & fake name to be indexed properly
counter = 0

active_usage = true
while active_usage
	puts "Enter a real name to get a fake name back, type \"quit\" when finished."
	name = gets.chomp
	if name == "quit"
		array_counter = 0
		while array_counter < orig_name_array.length
			puts "#{orig_name_array[array_counter]} is actually #{fake_name_array[array_counter]}"
			array_counter += 1
		end
		active_usage = false
	else
		original_name = name
		orig_name_array[counter] = name # assigning original name to its appropriate array/index
		name.downcase!
		
		# making an array of two indexes, index 0 being first name, index 1 being the last name
		name = name.split (' ')
		name.reverse!

		# creating new separate arrays for first name & last name, with each char being an index
		first_name = name[0].chars
		last_name = name[1].chars

		# iterating through first name array, calling the appropriate method for each index
		first_name.map! {|vowel_or_cons|
			if vowel_or_cons == "a" || vowel_or_cons == "e" || vowel_or_cons == "i" || vowel_or_cons == "o" || vowel_or_cons == "u"
				next_vowel(vowel_or_cons)
			else
				next_consonant(vowel_or_cons)
			end
		}

		# iterating through the last name array, calling the appropriate method for each index
		last_name.map! {|vowel_or_cons|
			if vowel_or_cons == "a" || vowel_or_cons == "e" || vowel_or_cons == "i" || vowel_or_cons == "o" || vowel_or_cons == "u"
				next_vowel(vowel_or_cons)
			else
				next_consonant(vowel_or_cons)
			end
		}

		# getting the finalized fake name
		name = "#{first_name.join.capitalize} " + "#{last_name.join.capitalize}"
		fake_name_array[counter] = name # assigning fake name to appropriate array/index
		counter += 1
	end

end







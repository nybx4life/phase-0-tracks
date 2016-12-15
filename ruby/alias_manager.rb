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
	# using map.length -1 instead of 4 so map can dynamically change & still work
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
	# using map.length - 1 instead of 20 so map can dynamically change & still work
	if consonant == map.length - 1
	  consonant = map[0]
	else 
	  consonant = map[consonant + 1]
	end
end

# getting our spy's name, swapping the first & last name, and putting them into
# separate arrays
puts "What is our spy's real name?"
real_name = gets.chomp
real_name.downcase!
real_name = real_name.split (' ')
real_name.reverse!
first_name = real_name[0].chars
last_name = real_name[1].chars

first_name.map! {|vowel_or_cons|
	if vowel_or_cons == "a" || vowel_or_cons == "e" || vowel_or_cons == "i" || vowel_or_cons == "o" || vowel_or_cons == "u"
		next_vowel(vowel_or_cons)
	else
		next_consonant(vowel_or_cons)
	end
}

last_name.map! {|vowel_or_cons|
	if vowel_or_cons == "a" || vowel_or_cons == "e" || vowel_or_cons == "i" || vowel_or_cons == "o" || vowel_or_cons == "u"
		next_vowel(vowel_or_cons)
	else
		next_consonant(vowel_or_cons)
	end
}

real_name = "#{first_name.join.capitalize} " + "#{last_name.join.capitalize}"
p real_name







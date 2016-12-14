letters = ["aaa", "b", "c", "d", "e", "aa"]

superheroes = {
	superman:"flying",
	batman:"being_awesome",
	spiderman:"climbing_stuff"
}

numbers = [1, 2, 3, 4]

roman_numerals = {
	i: 1,
	v: 5,
	x: 10,
	l: 50,
	xc: 90
}



# puts "This is before running the roman_numerals.keep_if"
# p roman_numerals
# roman_numerals.keep_if {|roman, number_value| number_value > 49}
# puts "This is after running the roman_numerals.keep_if"
# p roman_numerals


# puts "This is before running the superheroes.delete_if"
# p superheroes
# superheroes.delete_if {|superhero, power| power == "flying"}
# puts "This is after running the superheroes.delete_if"
# p superheroes

# letters.delete("aaa")
# p letters

# new_number_array = []
# new_number_array = numbers.drop_while do |number|
# 	number < 3
# end
# p new_number_array


# numbers.select! do |number|
# 	p number > 2
# end
# p numbers

# numbers.keep_if do |number|
# 	number > 1
# end
# p numbers

# numbers.delete_if do |number|
# 	number < 3
# end
# p numbers

# puts "This is before running the block."
# letters.each do |letter|
# 	puts letter
# end
# p letters
# puts "This would be after running the block."

# puts "This is before running the superheroes.each block."
# superheroes.each do |superhero, power|
# 	puts "The superhero #{superhero} has a power of #{power}"
# end
# puts "This would be after running the block."

# puts "This is before running the letters.map block"
# new_letters_array = letters.map do |letter|
# 	p letter
# end
# puts "This is after running the letters.map block"
# p new_letters_array

# puts "This is before running the superhero hash .map block"
# new_superhero_hash = superheroes.map do |superhero, power|
# 	p "#{superhero}, #{power}"
# end
# puts "This is after running the superhero hash .map block"
# p new_superhero_hash

# p "This is before running the letters hash .map! block"
# letters.map! do |letter|
# 	p letter.next
# end
# p "This is after running the letters hash .map! block"


# p "This is before running the superhero hash .map! block"
# superheroes.map! do |superhero, power|
# 	p "#{superhero}, #{power}"
# end
# p "This is after running the superhero hash .map! block"





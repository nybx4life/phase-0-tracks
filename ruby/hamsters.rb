puts "What is the hamster's name?"
name = gets.chomp
puts "What is the hamster's volume level on a scale of 1-10?"
volume = gets.chomp.to_i
puts "What is the fur color?"
color = gets.chomp
#Setting candidate as a boolean if yes or no is provided, otherwise it stays as is
puts "Is this hamster a good candidate for adoption (yes/no)?"
candidate = gets.chomp
if candidate == "yes"
	candidate = true
elsif candidate == "no"
	candidate = false
end
# Check if age is empty & making it nil if so, otherwise, making it an int
puts "What is the estimated age of the hamster?"
age = gets.chomp.to_s
if age.empty?
	age = nil
else
	age = age.to_i
end

puts "The hamster's name is: #{name}"
puts "The hamster's volume level, on a scale of 1-10 is a: #{volume}"
puts "The fur color of the hamster is: #{color}"

#Printing unsure statement if valid input wasn't provided
if candidate == true
	puts "The hamster is a good candidate for adoption :)"
elsif candidate == false
	puts "This hamster is not a good candidate for adoption :("
else 
	puts "We aren't sure if this hamster is a good candidate for adoption or not."
end

#Printing unsure sentence if no age was provided, else printing the age
if age == nil
	puts "Hamster ages are difficult to estimate, and we aren't sure on this one."
else
	puts "The hamster's age is: #{age}"
end

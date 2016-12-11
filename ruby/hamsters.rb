puts "What is the hamster's name?"
name = gets.chomp
puts "What is the hamster's volume level?"
volume = gets.chomp
puts "What is the fur color?"
color = gets.chomp
puts "Is this hamster a good candidate for adoption?"
candidate = gets.chomp
puts "What is the estimated age of the hamster?"
age = gets.chomp

if age.empty?
	age = nil
end

# if age.blank? == true
# 	age = nil
# end

# puts "#{age}"
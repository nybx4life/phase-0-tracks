#File worked on with karl_thomas

puts "Estimated age: "
hamster_age = gets.to_i

if age = " "
  age = nil
end

puts "Hamster's name: "
hamster_name = gets.chomp!

puts "Volume level (1-11): "
hamster_volume = gets.to_i

puts "Fur color: "
hamster_color = gets.chomp!

puts "Good for adoption (yes or no): "
hamster_adoption = gets.chomp!

until (hamster_adoption == "yes" || hamster_adoption == "no")
  puts "invalid response, try again: "
  adoption = gets.chomp!
end
if (hamster_adoption == "yes")
	hamster_adoption = true
else
	hamster_adoption = false
end


puts "Hamster name: #{hamster_name}"
puts "Hamster age: #{hamster_age}"
puts "Hamster volume: #{hamster_volume}"
puts "Hamster color: #{hamster_color}"
puts "Is the hamster good for adoption? Answer: #{hamster_adoption}"

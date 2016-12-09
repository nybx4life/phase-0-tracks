puts "Welcome to the Werewolf Intelligence Bureau, How many employees will be processed?"
total_employees = gets.chomp
total_employees = total_employees.to_i
employee_counter = 0

until employee_counter == total_employees

	#Asking employees questions and assigning them to variables
	puts "What is your name?"
	name = gets.chomp
	puts "How old are you?"
	age = gets.chomp
	age = age.to_i
	puts "What year were you born?"
	birth_year = gets.chomp
	birth_year = birth_year.to_i
	puts "Should we order you some garlic bread (yes or no)?"
	g_bread = gets.chomp
	puts "Would you like to enroll in the company's health insurance (yes or no)?"
	h_insurance = gets.chomp

	current_year = 2016;

	#Checking if the age is correct, and assigning a boolean 
	# of true if it is correct, and false if the age doesn't match up
	correctAge = true;
	if birth_year + age != current_year
		correctAge = false;
	end

	#Setting up the results variable, which can change throughout the statements
	results = "Results inconclusive";

	if correctAge && (g_bread == "yes" || h_insurance == "yes")
		results = "Probably not a vampire"
	end

	if correctAge == false && (g_bread == "no" || h_insurance == "no")
		results = "Probably a vampire"
	end

	if correctAge == false && g_bread == "no" && h_insurance == "no"
		results = "Almost certainly a vampire."
	end

	if name == "Drake Cula" || name == "Tu Fang"
		results = "Definitely a vampire."
	end

	#Loop checking if sunshine is an allergy, and if so changing result 
	#to Probably a vampire.
	puts "Name your allergies, one at a time, and type \"done\" when finished:"
	allergy_bool = true
	while allergy_bool
		allergy = gets.chomp
		if allergy == "sunshine"
			results = "Probably a vampire."
			allergy_bool = false;
		elsif allergy == "done"
			allergy_bool = false;
		end
	end


	puts "#{results}"
	employee_counter += 1
end

#All that work and we're just going to be friends with these vampires!
puts "Actually, never mind! What do these questions have to do with anything? Let's all be friends."
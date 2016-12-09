puts "Welcome to the Werewolf Intelligence Bureau, How many employees will be processed?"
total_employees = gets.chomp
total_employees = total_employees.to_i
employee_counter = 0

until employee_counter == total_employees

	#Asking new employees questions and assigning them to variables
	puts "What is your name?"
	name = gets.chomp
	puts "How old are you?"
	age = gets.chomp
	age = age.to_i
	puts "What year were you born?"
	birth_year = gets.chomp
	birth_year = birth_year.to_i
	puts "Should we order you some garlic bread?"
	g_bread = gets.chomp
	puts "Would you like to enroll in the company's health insurance?"
	h_insurance = gets.chomp

	current_year = 2016;

	#Setting up the results variable, which can change throughout the statements
	results = "Results inconclusive";

	if birth_year + age == current_year
		results = "Probably not a vampire"
	else
		ageB = false
	end

	if ageB == false && (g_bread == "no" || h_insurance == "no")
		results = "Probably a vampire"
	end

	if ageB == false && g_bread == "no" && h_insurance == "no"
		results = "Almost certainly a vampire."
		otherwise_var = true;
	end

	if name == "Drake Cula" || name == "Tu Fang"
		results = "Definitely a vampire."
		otherwise_var = true;
	end

	puts "#{results}"
	employee_counter += 1
end
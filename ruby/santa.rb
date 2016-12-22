class Santa
	def speak
		puts "Ho, ho, ho! Haaaappy holidays!"
	end

	def introduction
		puts "Hello, I'm a Santa instance, my gender is #{@gender}, and my ethnicity is #{@ethnicity}"
	end

	def eat_milk_and_cookies(cookie_type)
		puts "That was a good #{cookie_type}!"
	end

	def initialize(gender, ethnicity)
		puts "Initializing Santa instance..."
		@gender = gender
		@ethnicity = ethnicity
		@reinder_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", 
			"Cupid", "Donner", "Blitzen"]
		@age = 0
	end
end

# bad_santa = Santa.new
# bad_santa.speak
# bad_santa.eat_milk_and_cookies("oreo")

santas = []
genders_array = ["male", "female", "fendergender", "blendergender", "nogender", "neutragender",
	"herbagender", "sendergender"]
ethnicity_array = ["elephant-man", "asian", "Middle Eastern", "black", "white", 
	"Eastern European", "Mexican-American", "N/A"]

genders_array.length.times do |counter|
	santas << Santa.new(genders_array[counter], ethnicity_array[counter])
end

santas.each do |santa_instances|
	santa_instances.speak
	santa_instances.introduction
end


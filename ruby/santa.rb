class Santa
	attr_reader :ethnicity, :reindeer_ranking
	attr_accessor :gender, :age

	def speak
		puts "Ho, ho, ho! Haaaappy holidays!"
	end

	def introduction
		puts "Hello, I'm a new Santa instance, my gender is #{@gender}, my ethnicity is #{@ethnicity}, and I'm #{@age} years old!"
	end

	def eat_milk_and_cookies(cookie_type)
		puts "That was a good #{cookie_type}!"
	end

	def initialize(gender, ethnicity)
		puts "Initializing Santa instance..."
		@gender = gender
		@ethnicity = ethnicity
		@reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", 
			"Cupid", "Donner", "Blitzen"]
		@age = 0
	end

	def celebrate_birthday
		@age = @age += 1
	end

	def get_mad_at(reindeers_name)
		@reindeer_ranking.delete(reindeers_name)
		@reindeer_ranking << reindeers_name
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

200.times do
	new_santa = Santa.new(genders_array[rand(genders_array.length + 1)], ethnicity_array[rand(ethnicity_array.length + 1)])
	new_santa.age = rand(141)
	new_santa.introduction
end

# genders_array.length.times do |counter|
# 	santas << Santa.new(genders_array[counter], ethnicity_array[counter])
# end

# santas.each do |santa_instances|
# 	santa_instances.speak
# 	santa_instances.introduction
# end

# puts "Santa[0]'s age before celebrating birthday"
# 5.times do santas[0].celebrate_birthday end
# puts "Santa[0]'s age after celebrating 5 birthdays"
# p santas[0].age

# puts "Before get_mad_at(Dasher) runs"
# p santas[0].reindeer_ranking
# santas[0].get_mad_at("Dasher")
# puts "After get_mad_at(Dasher) runs"
# p santas[0].reindeer_ranking

# santas[0].gender = "Newly reassigned"
# santas[0].introduction
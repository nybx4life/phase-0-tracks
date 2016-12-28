class Santa
  attr_accessor :gender 
  attr_reader  :ethnicity, :age
    
  def speak 
    p "Ho, ho, ho! Haaaaappy Holidays!"
  end 
  
  def eat_milk_and_cookies(cookie)
    p "That was a good #{cookie}!"
  end 
  
  def initialize(gender, ethnicity)
    @gender 
    @ethnicity
      @reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
    @age = rand(0..140) 
    p "Intializing Santa instance"
  end
  
  #r2 methods
  def celebrate_birthday
    @age = @age + 1
  end
  
  def get_mad_at(reindeer)
    @reindeer_ranking.insert(8, @reindeer_ranking.delete_at(@reindeer_ranking.index(reindeer)))
    p @reindeer_ranking
  end
  
  
  #setter method 
  #def gender=(nu_gender)
   # @gender = nu_gender
  #  p @gender
  #end
  
  
  #getter methods 
#  def age 
#    @age 
#  end 
   
#  def ethnicity
 #   @ethnicity 
 # end 
  
  
  
end


#    santas = []
#santas << Santa.new("agender", "black")
#santas << Santa.new("female", "Latino")
#santas << Santa.new("bigender", "white")
#santas << Santa.new("male", "Japanese")
#santas << Santa.new("female", "prefer not to say")
#santas << Santa.new("gender fluid", "Mystical Creature (unicorn)")
#santas << Santa.new("N/A", "N/A")

#kris = Santa.new("male", "white") 

#kris.celebrate_birthday
#kris.speak
#kris.eat_milk_and_cookies("Snickerdoodle")
#kris.get_mad_at("Vixen")
#kris.gender = ("agender")

#array - creating 50 santas!
santas = []
example_genders = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A"]
example_ethnicities = ["black", "Latino", "white", "Japanese-African", "prefer not to say", "Mystical Creature (unicorn)", "N/A"]
50.times do
  santas << Santa.new(example_genders[rand(0..6)], example_ethnicities[rand(0..6)]) 
  
end

p santas
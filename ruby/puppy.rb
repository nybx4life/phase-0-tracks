# SPECIES--------
# Puppies

#CHARACTERISTICS-----
# Color: varies
# Happy: yes
# eye count: 2
# name: varies
# Size: varies

# BEHAVIOR ------------
# play
# welcome people home
# lick human faces

class Puppy

    def initialize
        puts "Initializing new puppy instance..."
    end

 def fetch(toy)
   puts "I brought back the #{toy}!"
   toy
 end

 def speak(num)
     num.times do
         puts "Woof!"
     end
 end

 def roll_over
     puts "*rolls over*"
 end

 def dog_years(num)
     num/7
 end

 def dog_sits
     puts "*sits down*"
 end

end

pup = Puppy.new
pup.fetch("ball")
pup.speak(4)
pup.roll_over
p pup.dog_years(7)
pup.dog_sits



class Cat

    def initialize
        puts "Initilaizing cat..."
    end

    def meow
        puts "Meow!"
    end

    def cat_years(num)
        num/9
    end

end

cat_array = []

50.times do 
    cat_array << Cat.new
end

cat_array.each do |cat|
    cat.meow
    p cat.cat_years(rand(200))
end
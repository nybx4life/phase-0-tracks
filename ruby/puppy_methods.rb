
class Puppy
  x = 5
  def fetch(toy)
    puts "I brought back the #{toy}!"
    toy
  end

  def speak(woof)
    woof.times {
      puts "Woof"
    }
    end
  end
  
  public
  def roll_over
    puts "*rolls over*"
  end

  def dog_years(human)
    puts human * 7
  end
  
  def stay 
    puts "Stay..."
    puts "Good dog"
  end
  
  def initialize
    puts "Initializing new puppy instance" #initialize method runs first. Misspell kills method
  end
  
#swaggy = Puppy.new 

#swaggy.fetch("ball")
#swaggy.speak(5)
#swaggy.roll_over
#swaggy.dog_years(10)
#swaggy.stay


class Pupster
  def initialize
    puts "Initializing Pupster..."
  end 
  
  def dog_years(human)
    puts human * 7
  end
  
  def stay 
    puts "Stay..."
    puts "Good dog"
  end
  
end  

puppies = Array.new

50.times {
  swig = Pupster.new 
  puppies.push(swig)
}

puppies.each do |swoog|
  swoog.stay 
  swoog.dog_years(rand(1...30))
end

  
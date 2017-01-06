# Virus Predictor

# I worked on this challenge [by myself, with: ].
# We spent [#] hours on this challenge.

# EXPLANATION OF require_relative
#
#

# require_relative will essentially link a file in the same directory to your current file,
# it can be thought of as copying and pasting the contents of the other file to this file.
# the relative just means the other file is in the same directory.

require_relative 'state_data'

class VirusPredictor

  # initialize runs whenever an instance of this class is created
  # initializes some instance variables for the class
  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end

  
  # calling two other methods using the data we received when we initialized the instance
  def virus_effects
    predicted_deaths
    speed_of_spread
  end

  private
  # finding the number of predicted deaths based on the data from the arguments given to it
  # based on population density
  # also prints out summary of predicted deaths
  def predicted_deaths
    # predicted deaths is solely based on population density
    if @population_density >= 200
      d = 0.4
    elsif @population_density >= 150
      d = 0.3
    elsif @population_density >= 100
      d = 0.2
    elsif @population_density >= 50
      d = 0.1
    else
      d = 0.05
    end
    number_of_deaths = (@population * d).floor

    print "#{@state} will lose #{number_of_deaths} people in this outbreak"

  end





  # calculates the predicted speed of the spread and assigns that to the speed variable
  # prints a statement with that data
  def speed_of_spread #in months
    # We are still perfecting our formula here. The speed is also affected
    # by additional factors we haven't added into this functionality.

    if @population_density >= 200
      months_to_propagate = 0.5
    elsif @population_density >= 150
      months_to_propagate = 1
    elsif @population_density >= 100
      months_to_propagate = 1.5
    elsif @population_density >= 50
      months_to_propagate = 2
    else
      months_to_propagate = 2.5
    end

    puts " and will spread across the state in #{months_to_propagate} months.\n\n"

  end

  #Refactor




end

#=======================================================================

# DRIVER CODE
 # initialize VirusPredictor for each state


alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population])
alabama.virus_effects

jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population])
jersey.virus_effects

california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population])
california.virus_effects

alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population])
alaska.virus_effects

STATE_DATA.each do |state, data|
  this_state = VirusPredictor.new(state, data[:population_density], data[:population])
  this_state.virus_effects
end









#=======================================================================
# Reflection Section
# The differences between the two hash syntaxes in the state_data file is the first hash 
# is using strings as the key, and therefore uses the hash rocket syntax. This can be useful
# when you want to print out your keys for some reason, it allows you to not have to go through
# the extra step of converting your key from a symbol to a string.
# The other hash uses symbols as keys, which I hear is a bit more efficient.

# Require relative kind of links a file from the same directory to your current working file,
# one way to think about it is to imagine it as being copied and pasted into the top of your file.
# It differs from require in that the relative is specifying that the file is within the same
# directory that you're currently working in, whereas require would mean it isn't in the same 
# directory, and you'd want to specify exactly where that file is.

# So .each is one way to iterate through a hash, in this case, you give two paramaeters,
# so it's probably best to use this when you'll be utilizing both the key and the value as
# you iterate through. You can also use each_key if you need to iterate through a hash, but
# only need to access the key, or each_value, similarly for when you need to iterate through
# a hash and use only the value.

# When refactoring virus_effects, it was calling two other instance methods, and passing instance
# variables in as arguments to those methods. This is completely unnecessary since instance variables
# are already available to every other instance method in the class. Instance variables allow you
# to pass data between instance methods without the need to pass the data as an argument. So passing
# data as arguments was completely pointless.

# Picking well thought out variable names this challenge was solidified a bit for me on this 
# challenge. Although, that is something that just flat out takes practice. DRY was also
# solidified a bit more this challenge too, whenever something is basically copied & pasted
# on multiple lines, you have a chance to factor that out of your code. I understood this theory
# before, but seeing it in practice is a different story, and is also another thing that
# will take practice and attention to continue improving on.
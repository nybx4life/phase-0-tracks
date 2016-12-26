require_relative 'shout'

module Shout
  # we'll put some methods here soon, but this code is fine for now!
 # def self.yell_angrily(words)
  #  words + "!!!" + " :("
 # end
  
  #def yelling_happily
#	p "YAY!"
 # end
  
  def angry_yell(target)
	puts "I'm sick and tired of #{target}!"
  end
  
end

class Driver
	include Shout
end 

class Passenger
	include Shout
end

sam = Driver.new
sam.angry_yell("traffic")

bill = Passenger.new
bill.angry_yell("packed buses")
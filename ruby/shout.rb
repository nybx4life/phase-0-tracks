# module Shout
#   def self.yell_angrily(words)
#     words + "!!!" + " :("
#   end

#   def self.yelling_happily(words)
#   	words + "!!!" + "I'm so damn happy!! :)"
#   end
# end

# p Shout.yell_angrily ("Nooo")
# p Shout.yelling_happily ("Yess")

module Shout
	def yell_angrily(words)
		words + "!!!" + " :("
	end

	def yell_happily(words)
		words + "!!!" + "I'm so damn happy!! :)"
	end
end

class Elf
	include Shout
end

class Little_helpers
	include Shout
end

elf = Elf.new
p elf.yell_angrily("Santa is working us to death, for no money")
p elf.yell_happily("We just finished our 84 hour shift")

little_helper = Little_helpers.new
p little_helper.yell_angrily("Santa is forcing us to work a 2.5 hour shift")
p little_helper.yell_happily("Our 2.5 hour shift is over, and we all got raises")


class Puppy

end

Puppy.methods

duchess = Puppy.new
fido = Puppy.new
spot = Puppy.new

spot.class # returns Puppy in console.
duchess == fido # returns false in console. 
fido.instance_of?(Array) # returns false in console.
fido.instance_of?(Puppy) # returns true in console.
spot.play_dead # returns undefined method error
#Code goal: Takes name input, flips first last name, and "scrambles name" by 
#pushing vowel to next vowel and consonant to next consonant.

#First run: Input name.
puts "Gimme first name: "
first_name = gets.chomp

puts "Gimme last name: "
last_name = gets.chomp

#puts "Your name is #{first_name} #{last_name}"

#To ensure code works for shifting vowel and consonant, I make names all lowercase.
first_name = first_name.downcase 
last_name = last_name.downcase

#Method to shift vowel to next vowel
def vowel_adv(str)
  vowels = ["a", "e", "i", "o", "u"]
  str = str.split('')
  str_new = str.map do |char|
    if vowels.include?(char)
      vowels.rotate(1)[vowels.index(char)]
    else
      char
    end
  end
  str_new.join
end



#Method to shift consonant to next consonant
def const_adv(str)
  consonants = ["b","c","d","f","g","h","j","k","l","m","n","p","q","r","s","t","v","w","x","y","z"]
  str = str.split('')
  str_new = str.map do |char|
    if consonants.include?(char)
      consonants.rotate(1)[consonants.index(char)]
    else
      char
    end
  end
  str_new.join
end


#Method to put the name together, and flip last and first name. In addition, first and last name are capitalized.
def mixture (fname, lname)
  mix_firstname = vowel_adv(fname)
  mix_firstname = const_adv(mix_firstname)
  
  mix_lastname = vowel_adv(lname)
  mix_lastname = const_adv(mix_lastname)
  
  mix_firstname = mix_firstname.capitalize
  mix_lastname = mix_lastname.capitalize
  
  tmp = mix_firstname
  mix_firstname = mix_lastname
  mix_lastname = tmp
  return "#{mix_firstname} #{mix_lastname}"
  
end
#make array to hold new names
mixNames = Array.new

mixNames.push("#{first_name.capitalize} #{last_name.capitalize} is also known as #{mixture(first_name, last_name)}")

#Loop to continue to take names.
while (first_name != "")
  
  puts "Gimme first name(Press 'Enter' to stop): "
  first_name = gets.chomp

  

  puts "Gimme last name: "
  last_name = gets.chomp


  first_name = first_name.downcase 
  last_name = last_name.downcase
  if first_name == ""
    break
  end
  mixNames.push("#{first_name.capitalize} #{last_name.capitalize} is also known as #{mixture(first_name, last_name)}")
end

#print array contents
p mixNames

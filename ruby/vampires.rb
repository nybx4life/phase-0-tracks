
#survey method to handle input of variables, and inevitable judgement.
def survey
  puts "What is your name?"
  name = gets.chomp!
  puts "What old are you? "
  age = gets.to_i
  puts "What year were you born? "
  year = gets.to_i
  puts "Our company cafeteria serves garlic bread. Should we order some for you?  (yes or no)"
  bread = gets.chomp!
  puts "Would you like to enroll in the company's health insurance?  (yes or no)"
  ins = gets.chomp!



#code to handle age and year
math = 2016 - year


#puts math

  if age == math
    x =  true
  else
    x = false
  end


#boolean statements to handle bread and ins
if bread == "yes"
  bread = true
else
  bread = false
end


if ins == "yes"
  ins = true
else
  ins = false
end


  #code to handle boolean statements


  if (x && (bread || ins))
    a = TRUE
  else
    a = FALSE
  end


  if (!x && (!bread || !ins) )
    b = TRUE
  else
    b = FALSE
  end


  if (!x && !bread && !ins )
   c = TRUE
  else
   c = FALSE 
  end


  if name == "Drake Cula" || name == "Tu Fang"
     d = TRUE
  else
    d = FALSE
  end

# Last minute conditions! Using allergy input loop to determine if result shifts to "Probably a vampire"
puts "List your allergies. Type 'done' when finished: "
allergy = gets.chomp!

while allergy != "done"
  if allergy == "sunshine"
   c = FALSE
   b = TRUE
    break
  end
  puts "Allergy: #{allergy}"
  allergy = gets.chomp
end 



  # provides judgement. Ranking of results go from 'Definitely vampire' to 'Maybe not vampire', with factors deciding priority result.
  if d
    puts "Result: Definitely vampire"
  elsif (a || b) && c
     puts "Result: Almost certainly a vampire"
  elsif (b)
     puts "Result: Probably a vampire"
  elsif  a
   puts "Result: Maybe not a vampire"
  else
    puts "Reslts inconclusive"
  end
 
 
end

#Input and loop to handle multiple surveys.
puts "How many applicants?"
app = gets.to_i

x = 0 

while x < app
  survey
  
  x += 1 
end

#The plot twist. Spoiler alert!
puts "Actually, never mind! What do these questions have to do with anything? Let's all be friends."



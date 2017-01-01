#One user can enter a word (or phrase, if you would like your game to support that), and another user attempts to guess the word.
#Guesses are limited, and the number of guesses available is related to the length of the word.
#Repeated guesses do not count against the user.
#The guessing player receives continual feedback on the current state of the word. So if the secret word is "unicorn", the user will start out seeing something like "_ _ _ _ _ _ _", which would become "_ _ _ c _ _ _" after the user enters a guess of "c".
#The user should get a congratulatory message if they win, and a taunting message if they lose.

class Game
  #First things first... create user input for string.
  puts "Player one...input word: "
  guess_word = gets.chomp!

  p guess_word
  word_array = guess_word.split("")
  p word_array

#create array that shows blank spaces
  blank_word = []
  x = 0 
  while x < word_array.size do
    blank_word.push("_")
    x += 1
  end 

  p blank_word

#guess character
#puts "Player two, guess a letter: "
#letter = gets.chomp!

#test code -> check to see if code can tell when letter is part of phrase. If so, add to blank_aword array
#if word_array.include?(letter) == true 
#  p "YES!"
  #insert letter in blank_array, removing blank space
#  blank_word.insert(word_array.index(letter), letter)
#else 
#  p "NO!"
#end

#p blank_word

#let me comment out the above code, place all of that in a while loop with a new variable.
#Now we'll loop for two conditions: For wrong_guess to hit a threshhold, or for blank array to not have any more blank spaces.

#Extra point: We'll make a new array for existing letter guesses, and not count those.
guess_made = []
  wrong_guess = 0 
  while wrong_guess < guess_word.size && blank_word.include?("_")
   puts "Player two, guess a letter: "
   letter = gets.chomp!
   if word_array.include?(letter) == true 
      p "YES!"
      
      #Special case: handling words with multiple of the same letter; 
      #create array with indices of where each letter exists. 
      #Afterwards, for each index of new array, we specify each index to remove, and to add.
      if word_array.count(letter) > 1 
        z = word_array.each_index.select{|i| word_array[i] == letter}  
        z.each_index {|i|
        blank_word.delete_at(z[i])
        blank_word.insert(z[i], letter)
        }
        
      end
   #insert letter in blank_array, removing blank space
      blank_word.delete_at(word_array.index(letter))
      blank_word.insert(word_array.index(letter), letter)
   elsif guess_made.include?(letter) == true
    p "Already made this guess. Try again."
   else
     p "NO!"
    wrong_guess += 1 
    guess_made.push(letter)
   end

   p blank_word
  end 

#if-else to satisfy game-ending conditions
  if blank_word.include?("_") == false 
   puts "YOU WIN! CELEBRATE!"
  else 
   puts "YOU LOSE! FEEL BAD FOR YOURSELF!"
  end

#game is complete! Now wrap this baby up in a class, and we are done!


end
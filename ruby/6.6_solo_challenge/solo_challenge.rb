# create game class
# take_word method 
	# input: taking player 1 string, turns it into an array of chars & assign it
	# output: an array of chars

# valid_guess? method to check if player 2's guess is a repeat or not
	# input: player 2's guess
	# function: Compare player 2's first guess with previous guesses
	# output: true or false, true if is not a repeat, false if it is a repeat

# feedback method
	# function: print the current state of the board
	# check if there is a win or a loss, and print congratulatory method or taunting message if so
	# otherwise, message how many turns are remaining

# game_time method
	# input:
	# function: update the state of the board
	# output:


class Guessing_game
	attr_accessor :already_guessed, :total_chances, :current_guess, :guess_array
	attr_reader :current_guess, :is_over

	def initialize(word)
		@key_word = word.split('')
		@guess_array = []
		@already_guessed = []
		@key_word.each do |char|
			@guess_array << "_"
		end
		@total_chances = @key_word.length * 2
		@guess_counter = 0
		@is_over = false
	end

	def valid_guess?(guess)
		if @already_guessed.include?(guess)
			false
		else
			true
		end
	end

	def game_time
		puts "Player 2, please put in your guess:"
		@current_guess = gets.chomp
		if valid_guess?(@current_guess)
			if @key_word.include?(@current_guess)
				index = @key_word.index(@current_guess)
				@guess_array[index] = @current_guess
				@already_guessed << @current_guess
				@guess_counter += 1
			else
				@already_guessed << @current_guess
				@guess_counter += 1
			end
		else
			puts "You already made that guess! Guess again, this won't count against you."
		end
	end

	def feedback
		p @guess_array.join(' ')
		puts "You have #{@total_chances - @guess_counter} guesses left."
		if @total_chances == @guess_counter
			end_sequence
		elsif @guess_array == @key_word
			end_sequence
		end
	end

	def end_sequence
		if @guess_array == @key_word
			@is_over = true
			p "Congratulations, you won!"
		else
			@is_over = true
			p "You lose, you suck at this game, try harder next time!"
		end
	end
end

puts "Welcome to the guessing game."
new_game = Guessing_game.new("pie")
new_game.feedback
while !new_game.is_over
	new_game.game_time
	new_game.feedback
end



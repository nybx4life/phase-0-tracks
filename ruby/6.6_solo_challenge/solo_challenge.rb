class Guessing_game
	attr_accessor :key_word, :guess_array, :already_guessed, :total_chances, :guess_counter
	attr_reader :is_over

	def initialize
		@guess_array = []
		@already_guessed = []
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

	# initializes @total_chances, initializes @guess_array of proper length with all underscores
	# & changes key word into an array, doesn't seem dry :(
	def format_key_word(key_word)
		initialize_total_guesses(key_word)
		@key_word = key_word.split('')
		@key_word.each do |char|
			@guess_array << "_"
		end
	end

	def initialize_total_guesses(key_word)
		@total_chances = key_word.length * 2
	end

	def format_guess(p2_guess)
		if valid_guess?(p2_guess)
			@already_guessed << p2_guess
			@guess_counter += 1
			if @key_word.include?(p2_guess)
				insert_correct_guess(p2_guess)
			end
		else
			puts "You already made that guess! Guess again, this won't count against you."
		end
	end

	def insert_correct_guess(p2_guess)
		i = 0
	    while i < @key_word.length
	    	if @key_word[i] == p2_guess
	      	@guess_array[i] = p2_guess
	    	end
	  	i += 1
		end
		@guess_array
	end

	def feedback
		p @guess_array.join(' ')
		p "You have #{@total_chances - @guess_counter} guesses left."
	end

	def end_sequence_win
		@is_over = true
		p "Congratulations, you won!"
	end

	def end_sequence_loss
		@is_over = true
		p "haha you lose, maybe try harder lolz"
	end

end

puts "Welcome to the guessing game!"
new_game = Guessing_game.new
puts "Player 1, enter the key word you want player 2 to guess:"
p1_input = gets.chomp
new_game.format_key_word(p1_input)
until new_game.is_over
	puts "Player 2, enter your guess:"
	p2_input = gets.chomp
	new_game.format_guess(p2_input)
	new_game.feedback
		if new_game.guess_array == new_game.key_word
			new_game.end_sequence_win
		elsif new_game.total_chances == new_game.guess_counter
			new_game.end_sequence_loss
		end
end



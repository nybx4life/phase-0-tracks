require_relative 'solo_challenge'

describe Guessing_game do
	let(:new_game) {new_game = Guessing_game.new}

	it "returns the guess array with all correct matches included" do
		new_game.key_word = ["f", "i", "b", "i"]
		new_game.guess_array = ["_", "_", "_", "_"]
		expect(new_game.insert_correct_guess("i")).to eq ["_", "i", "_", "i"]
	end

	it "returns the guess array with all correct matches included" do
		new_game.key_word = ["f", "i", "b", "i"]
		new_game.guess_array = ["_", "_", "b", "_"]
		expect(new_game.insert_correct_guess("i")).to eq ["_", "i", "b", "i"]
	end

	it "returns false if guess already exists in array, true if it doesn't exist" do
		new_game.already_guessed = ["z", "x", "y"]
		expect(new_game.valid_guess?("z")).to eq false
	end

	it "returns false if guess already exists in array, true if it doesn't exist" do
		new_game.already_guessed = ["z", "x", "y"]
		expect(new_game.valid_guess?("b")).to eq true
	end

	it "either congratulates or taunts you depending if the two arrays match or not" do
		new_game.guess_array = ["f", "i", "b", "i"]
		new_game.key_word = ["f", "i", "b", "i"]
		expect(new_game.end_sequence).to eq "Congratulations, you won!"
	end

	it "either congratulates or taunts you depending if the two arrays match or not" do
		new_game.guess_array = ["f", "i", "b", "i"]
		new_game.key_word = ["f", "i", "_", "i"]
		expect(new_game.end_sequence).to eq "You lose hahaha! Maybe try harder next time!"
	end

	it "prints the current board, and tells you how many guesses you have left" do
		new_game.total_chances = 10
		new_game.guess_counter = 7
		expect(new_game.feedback).to eq "You have 3 guesses left."
	end
	
end
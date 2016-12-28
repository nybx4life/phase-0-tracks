require_relative 'solo_challenge'

describe Guessing_game do
	let(:new_game) { Guessing_game.new ("hello") }

	it "checks if a guess is a repeat or not" do
		expect(new_game.valid_guess?("h")).to eq true
	end

	it "checks if a guess is a repeat or not" do
		new_game.already_guessed.push("h")
		expect(new_game.valid_guess?("h")).to eq false
	end

	it "checks if two arrays are equal" do
		new_game.guess_array = ["h", "e", "l", "l", "o"]
		expect(new_game.end_sequence).to eq "Congratulations, you won!"
	end

	it "checks if two arrays are equal" do
		expect(new_game.end_sequence).to eq "You lose, you suck at this game, try harder next time!"
	end


end

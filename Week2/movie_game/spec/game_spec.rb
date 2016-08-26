require_relative("../models/game.rb")

RSpec.describe Game do
	let(:game) { Game.new }
	describe "#movies" do
		it "the game has an array of movies" do
			expect(game.movies.class).to eq(Array)
		end
	end
end
require "random-word"

class RandWord
	attr_reader :random_word
	def initialize
		@random_word = []
	end

	def add_randoms
		@random_word << RandomWord.adjs.next
		@random_word << RandomWord.nouns.next
		@random_word.sample
	end

	# def pick_random
		
	# end
end
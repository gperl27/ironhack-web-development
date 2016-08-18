class Character
	attr_accessor :input, :inventory
	def initialize
		@input = ""
		@inventory = ""
	end

	def choice
		input = gets.chomp
	end
end
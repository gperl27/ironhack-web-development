class Piece
	include Validator
	attr_accessor :x, :y
	def initialize(x, y, color)
		@x = x
		@y = y
		@color = color
	end
end
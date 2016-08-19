class Bishop < Piece
	def can_move?(final_x, final_y)
		(final_x - @x).abs == (final_y - @y).abs
	end

	def validate_piece
		puts "BISHOP VALIDATIONS"
		puts "For #{@x}, #{@y}"
		puts "---"
		validate(@x, @y)
	end

	def to_s
		"Bishop"
	end
end
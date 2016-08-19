class Queen < Piece
	def can_move?(final_x, final_y)
		((final_x - @x).abs == (final_y - @y).abs) || ((final_x - @x) == 0 || (final_y - @y) == 0)
	end

	def validate_piece
		puts "QUEEN VALIDATIONS"
		puts "For #{@x}, #{@y}"
		puts "---"
		validate(@x, @y)
	end

	def to_s
		"Queen"
	end
end
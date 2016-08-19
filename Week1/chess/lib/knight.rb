class Knight < Piece
	def can_move?(final_x, final_y)
		((final_x - @x).abs == 1 && (final_y - @y).abs == 3) || ((final_x - @x).abs == 3 && (final_y - @y).abs == 1)
	end

	def validate_piece
		puts "KNIGHT VALIDATIONS"
		puts "For #{@x}, #{@y}"
		puts "---"
		validate(@x, @y)
	end

	def to_s
		"Knight"
	end
end
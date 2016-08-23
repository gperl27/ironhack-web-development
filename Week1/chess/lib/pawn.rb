class Pawn < Piece
	def can_move?(final_x, final_y)
		if @color == "black"
			if ((final_x - @x) == -1) && ((final_y - @y) == 1)
				true
			elsif ((final_x - @x) == 0) && ((final_y - @y) == 1)
				true
			elsif ((final_x - @x) == 0) && ((final_y - @y) == 2)
				true
			elsif ((final_x - @x) == 1) && ((final_y - @y) == 1)
				true
			else
				false
			end
		elsif @color == "white"
			if ((final_x - @x) == -1) && ((final_y - @y) == -1)
				true
			elsif ((final_x - @x) == -1) && ((final_y - @y) == 0)
				true
			elsif ((final_x - @x) == -2) && ((final_y - @y) == 0)
				true
			elsif ((final_x - @x) == -1) && ((final_y - @y) == 1)
				true
			else
				false
			end 
		end
	end

	def validate_piece

		puts "PAWN VALIDATIONS"
		puts "For #{@x}, #{@y}"
		puts "---"
		validate(@x, @y)
	end

	def to_s
		"Pawn"
	end
end
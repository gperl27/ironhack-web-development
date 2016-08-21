require_relative("lib/validator.rb")
require_relative("lib/piece.rb")
require_relative("lib/rook.rb")
require_relative("lib/king.rb")
require_relative("lib/knight.rb")
require_relative("lib/bishop.rb")
require_relative("lib/queen.rb")
require_relative("lib/pawn.rb")
require_relative("lib/board.rb")

# #rooks
# black_rook_left = Rook.new(0,7, 'black')
# white_rook_right = Rook.new(7,0, 'white')

# #kings
# white_king = King.new(1,5 , "white")
# black_king = King.new(5,1, "black")

# #knights
# white_knight = Knight.new(2,1, "white")

# #bishops
# black_bishop = Bishop.new(4,4, "black")

# #queens
# white_queen = Queen.new(0,3, "white")

# white_pawn = Pawn.new(2,2, "white")
# black_pawn = Pawn.new(1,1,"black")

# #validations
# black_rook_left.validate_piece
# white_king.validate_piece
# white_knight.validate_piece
# black_bishop.validate_piece
# white_queen.validate_piece
# white_pawn.validate_piece
# black_pawn.validate_piece

#board

my_board = Board.new

is_playing = true

puts "Type [START] to start a new game"
puts "Type [EXIT] to quit the applicaiton at any time"

while is_playing
	user_input = gets.chomp
	if user_input.downcase == 'exit'
		is_playing = false
	else
		puts "[PLEASE ENTER A MOVE]"
		puts "[A valid entry has 4 parameters:]"
		puts "[A coordinate x,y, which indicates the piece at the current position]"
		puts "[And a final coordinate, which is where the selected piece should go]"
		puts "***Example user input: 0,3,5,3***"
		user_input = gets.split(",")
		my_board.move(user_input[0].to_i, user_input[1].to_i,
						user_input[2].to_i, user_input[3].to_i)
		puts "Press any key to continue"
	end
end







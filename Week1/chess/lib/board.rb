class Board
	def initialize
		create_board
		show_board
	end

	private
		def create_board
			@board = []
			8.times { @board << []}
			add_pieces
		end

		def add_pieces
			black_nobles_row = [
				Rook.new(0,0,'black'), Knight.new(1,0,'black'), Bishop.new(2,0, 'black'), Queen.new(3,0, 'black'),
				King.new(4,0, 'black'), Bishop.new(5,0, 'black'), Knight.new(6,0,'black'), Rook.new(7,0, 'black')
			]
			black_pawn_row = [
				Pawn.new(1,1, 'black'), Pawn.new(1,1, 'black'), Pawn.new(2,1, 'black'), Pawn.new(3,1, 'black'),
				Pawn.new(4,1, 'black'), Pawn.new(5,1, 'black'), Pawn.new(6,1, 'black'), Pawn.new(7,1, 'black')
			]
			white_nobles_row = [
				Rook.new(0,6,'black'), Knight.new(1,6,'black'), Bishop.new(2,6, 'black'), Queen.new(3,6, 'black'),
				King.new(4,6, 'black'), Bishop.new(5,6, 'black'), Knight.new(6,6,'black'), Rook.new(7,6, 'black')
			]
			white_pawn_row = [
				Pawn.new(1,7, 'black'), Pawn.new(1,7, 'black'), Pawn.new(2,7, 'black'), Pawn.new(3,7, 'black'),
				Pawn.new(4,7, 'black'), Pawn.new(5,7, 'black'), Pawn.new(6,7, 'black'), Pawn.new(7,7, 'black')
			]
			empty_row = [0,0,0,0,0,0,0,0]

			@board[0] = black_nobles_row
			@board[1] = black_pawn_row
			(2..5).each {|x|
				@board[x] = empty_row
			}
			@board[6] = white_pawn_row
			@board[7] = white_nobles_row
		end

		def show_board
			@board.each { |row|
				row.each { |slot|
					print (slot.to_s).center(8)
				}
				puts ""
			}
		end
end
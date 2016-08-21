class Board
	attr_accessor :board
	def initialize
		create_board
		show_board
	end

	def move(x,y,final_x, final_y)
		system "clear"
		puts "#{@board[x][y].color.capitalize} #{@board[x][y]} to [#{final_x},#{final_y}]"
		if @board[x][y].can_move?(final_x, final_y) && @board[final_x][final_y].nil?
			puts "valid move"
			@board[x][y].x = final_x
			@board[x][y].y = final_y
			@board[final_x][final_y] = @board[x][y]
			@board[x][y] = nil
		else
			puts "can't do that"
		end

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
				Rook.new(0,0,'black'), Knight.new(0,1,'black'), Bishop.new(0,2, 'black'), Queen.new(0,3, 'black'),
				King.new(0,4, 'black'), Bishop.new(0,5, 'black'), Knight.new(0,6,'black'), Rook.new(0,7, 'black')
			]
			black_pawn_row = [
				Pawn.new(1,0, 'black'), Pawn.new(1,1, 'black'), Pawn.new(1,2, 'black'), Pawn.new(1,3, 'black'),
				Pawn.new(1,4, 'black'), Pawn.new(1,5, 'black'), Pawn.new(1,6, 'black'), Pawn.new(1,7, 'black')
			]
			white_nobles_row = [
				Rook.new(7,0,'white'), Knight.new(7,1,'white'), Bishop.new(7,2, 'white'), Queen.new(7,3, 'white'),
				King.new(7,4, 'white'), Bishop.new(7,5, 'white'), Knight.new(7,6,'white'), Rook.new(7,7, 'white')
			]
			white_pawn_row = [
				Pawn.new(6,0, 'white'), Pawn.new(6,1, 'white'), Pawn.new(6,2, 'white'), Pawn.new(6,3, 'white'),
				Pawn.new(6,4, 'white'), Pawn.new(6,5, 'white'), Pawn.new(6,6, 'white'), Pawn.new(6,7, 'white')
			]
			empty_row = [nil, nil, nil, nil, nil, nil, nil, nil]

			@board[0] = black_nobles_row
			@board[1] = black_pawn_row
			# (2..5).each {|x|
			# 	@board[x] = empty_row
			# }
			@board[2] = [nil, nil, nil, nil, nil, nil, nil, nil]
			@board[3] = [nil, nil, nil, nil, nil, nil, nil, nil]
			@board[4] = [nil, nil, nil, nil, nil, nil, nil, nil]
			@board[5] = [nil, nil, nil, nil, nil, nil, nil, nil]
			@board[6] = white_pawn_row
			@board[7] = white_nobles_row
		end

		def show_board
			puts '--------------------------------------------------------------------------------'
			@board.each { |row|
				row.each { |slot|
					print "|#{(slot.to_s).center(8)}|"
				}
				puts ""
				puts '--------------------------------------------------------------------------------'
			}
		end

end
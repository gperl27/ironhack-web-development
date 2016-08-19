module Validator
	def validate(final_x,final_y)
		#check x with y constant
		puts "*** CHECKING X COORDINATES ***"
		count = 0
		valid_moves = []
		invalid_moves = []
		while count <= 7
			(0..7).each do |i|
				test_x = final_x + i
				test_x_down = final_x - i
				if can_move?(test_x, count)
					if test_x <= 7
						valid_moves << "#{test_x}, #{count}"
					end
					
				else
					if test_x <= 7
						invalid_moves << "#{test_x}, #{count}"
					end
				end
				if can_move?(test_x_down, count)
					if test_x_down >= 0
						valid_moves << "#{test_x_down}, #{count}"
					end
					
				else
					if test_x_down >= 0
						invalid_moves << "#{test_x_down}, #{count}"
					end
				end
			end
			count+=1
		end

		count = 0
		#check y with x constant
		puts "*** CHECKING Y COORDINATES ***"
		while count <= 7
			(0..7).each do |i|
				test_y = final_y + i
				test_y_down = final_y - i
				if can_move?(count, test_y)
					if test_y <= 7
						valid_moves << "#{count}, #{test_y}"
					end
				else 
					if test_y <= 7
						invalid_moves << "#{count}, #{test_y}"
					end
				end
				if can_move?(test_y_down, count)
					if test_y_down >= 0
						valid_moves << "#{test_y_down}, #{count}"
					end
					
				else
					if test_y_down >= 0
						invalid_moves << "#{test_y_down}, #{count}"
					end
				end
			end
			count+=1
		end

		

		valid_moves.uniq!
		invalid_moves.uniq!

		puts invalid_moves.count + valid_moves.count
		puts ""
		puts "VALID MOVES: #{valid_moves}"
		puts ""
		puts "INVALID_MOVES: #{invalid_moves}"


		puts "*****************************"
		puts ""
	end

	def validate_down

	end
end
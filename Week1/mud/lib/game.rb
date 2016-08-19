class Game
	def initialize(rounds)
		@rounds = rounds
		@rooms = []
		@rounds.times { @rooms << Room.new }
		@character = Character.new
	end

	def start
		gameplay
	end

	#setting up the game
	private
		def save(
			)
			rooms_count = @rooms.length-count
			#puts rooms_count
			save_rooms = @rooms.slice(count, @rooms.length)
			new_save = Save.new(rooms_count)
			new_save.rooms = save_rooms
			new_save.character = @character
			new_save = YAML::Store.new "test.store"
		end		


		def gameplay(count=1)
			@rooms.each { |room|
				puts "************"
				puts "LEVEL #{count}"
				puts "************"

				puts "You are in a dark room."
				puts room.random_hint
				puts "You see #{room.item}."

				puts ">"
				puts "OPTIONS: [N] [E] [S] [W]"
				puts "PRESS [X] TO PICK UP ITEM"
				puts "PRESS [Z] TO DROP ITEM"
				puts "PRESS [C] TO CHECK ITEM"
				puts "ONLY 1 ITEM CAN BE CARRIED AT ANY GIVEN TIME"
				puts "Type [SAVE] to save your game"
				puts "Type [LOAD] to load saved game"

				advanced = true

				#THE GAME

				while(advanced)
					choice = @character.choice.upcase
					
					if room.openings.include?(choice)
						puts ""
						puts "YOU ADVANCE"
						puts ""
						advanced = false
					elsif room.dead_ends.include?(choice)
						puts "Dead end"
					elsif choice == "X" && @character.inventory.empty?
						if room.item == "nothing of use"
							puts "Can't do that"
						else
							@character.inventory = room.item
							puts "Picked up #{@character.inventory}."
							puts "Now, choose another option."
						end
					elsif choice == "C"
						if @character.inventory.empty?
							puts "You aren't carrying anything."
							puts "Choose another option."
						else 
							puts "You are currently carrying #{@character.inventory}."
							puts "Choose another option."
						end
					elsif choice == "Z" && !@character.inventory.empty?
						puts "#{@character.inventory.capitalize} has been dropped."
						puts "Please choose another option."
						@character.inventory = ""
					elsif choice == "SAVE"
						save = save(count)
						puts "<<<GAME SAVED>>>"
					elsif choice == "LOAD"
						#save.start
						puts "load here"
					else
						puts "Invalid input, please try again"
					end
				end

				count += 1
			}
		end
end
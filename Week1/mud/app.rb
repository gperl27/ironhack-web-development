require "yaml/store"
require_relative("lib/character.rb")
require_relative("lib/game.rb")
require_relative("lib/room.rb")

def gameplay(count=1)
	@rooms.each { |room|
		puts "************"
		puts "LEVEL #{count}"
		puts "************"

		puts "You are in a dark room."
		puts room.hint
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
				pleaseuts "<<<GAME SAVED>>>"
			elsif choice == "LOAD"
				#save.start
				puts "load here"
			else
				puts "Invalid input, please try again"
			end
		end

		count += 1
	}
	puts "----------------"
	puts "YOU'VE WON!!!!!"
	puts "----------------"
end

### INITITIALZE GAME & START ###
my_game = Game.new(5).start

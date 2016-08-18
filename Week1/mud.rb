class Character
	attr_accessor :input, :inventory
	def initialize
		@input = ""
		@inventory = ""
	end

	def choice
		input = gets.chomp
	end
end

class Game
	attr_accessor :rooms
	def initialize(rounds)
		@rounds = rounds
		@rooms = []
		@character = Character.new
	end

	def add_rooms(rounds)
		rounds = @rounds
		@rounds.times { @rooms << Room.new }
	end

	def randomize_items
		@rooms.each { |room|
			room.random_item
		}
	end

	def randomize_deadends
		@rooms.each { |room|
			room.randomize_openings
		}
	end

	def save(count)
		rooms_count = @rooms.length-count
		puts rooms_count
		save_rooms = @rooms.slice(count, @rooms.length)
		data = [rooms_count, save_rooms]
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
			

			#choice = @character.choice

			advanced = true

			while(advanced)
				choice = @character.choice

				if room.openings.include?(choice.upcase)
					puts ""
					puts "YOU ADVANCE"
					puts ""
					#choice = true
					advanced = false
				elsif room.dead_ends.include?(choice.upcase)
					puts "Dead end"
				elsif choice.upcase == "X" && @character.inventory.empty?
					if room.item == "nothing of use"
						puts "Can't do that"
					else
						@character.inventory = room.item
						puts "Picked up #{@character.inventory}."
						puts "Now, choose another option."
					end
				elsif choice.upcase == "C"
					if @character.inventory.empty?
						puts "You aren't carrying anything."
						puts "Choose another option."
					else 
						puts "You are currently carrying #{@character.inventory}."
						puts "Choose another option."
					end
				elsif choice.upcase == "Z" && !@character.inventory.empty?
					puts "#{@character.inventory.capitalize} has been dropped."
					puts "Please choose another option."
					@character.inventory = ""
				elsif choice.upcase == "SAVE"
					save(count)
				else
					puts "Invalid input, please try again"
				end
			end

			count += 1
		}
	end

	def start
		add_rooms(@rounds)
		randomize_items
		randomize_deadends
		gameplay
	end


end

class Room
	attr_accessor :openings, :item, :dead_ends
	def initialize
		@openings = []
		@item = ""
		@dead_ends = []
	end

	def random_item
		items = ["a bat", "a sword", "a pencil", "a mallet"]
		random = Random.new.rand(2)

		if random == 1
			random_item = items.sample
			@item = random_item
		else @item = "nothing of use"
		end
	end

	def randomize_openings
		directions = ["N","E","S","W"]
		random = Random.new.rand(directions.length)
		@dead_ends = directions.sample(random)
		directions.each {|direction|
			@dead_ends.each { |dead|
				if direction == dead
					directions.delete(direction)
				end
			}
		}
		@openings = directions
	end

	def random_hint
		#random = Random.new.rand(@openings.length)
		hint = @openings.sample
		puts "There is a door to the #{hint}."
	end

	# def directions
	# end
end

my_game = Game.new(5).start

# my_game.each {|room|
# 	puts room.item
# 	puts "Deadends: #{room.dead_ends}."
# }	
class Character
	def initialize
		@input = ""
	end

	def choice(input)
		if input == "N"
		elsif input == "E"
		elsif input == "S"
		elsif input == "W"
		end
	end
end

class Game
	attr_accessor :rooms
	def initialize(rounds)
		@rounds = rounds
		@rooms = []
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
			room.random_openings
		}
	end

	def gameplay
		@rooms.each { |room|
			puts "You are in a dark room."
			puts "You see #{room.item}."
			puts ""
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
	attr_accessor :direction, :item, :dead_ends
	def initialize
		@direction = ["N","E","S","W"]
		@item = ""
		@dead_ends = []
	end

	def random_item
		items = ["a bat", "a sword", "a pencil", "a mallet"]
		random = Random.new.rand(2)

		if random == 1
			random_item = items.sample
			@item = random_item
		else @item = "nothing of use."
		end
	end

	def random_openings
		random = Random.new.rand(@direction.length)
		@dead_ends = @direction.sample(random)
	end

	# def directions
	# end
end

my_game = Game.new(5).start

# my_game.each {|room|
# 	puts room.item
# 	puts "Deadends: #{room.dead_ends}."
# }	
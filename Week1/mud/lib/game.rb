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

	private
		# def save(
		# 	)
		# 	rooms_count = @rooms.length-count
		# 	#puts rooms_count
		# 	save_rooms = @rooms.slice(count, @rooms.length)
		# 	new_save = Save.new(rooms_count)
		# 	new_save.rooms = save_rooms
		# 	new_save.character = @character
		# 	new_save = YAML::Store.new "test.store"
		# end		
end
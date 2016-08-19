class Room
	attr_accessor :openings, :item, :dead_ends
	def initialize
		@openings = []
		@item = ""
		@dead_ends = []
		random_item
		randomize_openings
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
		hint = @openings.sample
		puts "There is a door to the #{hint}."
	end
end
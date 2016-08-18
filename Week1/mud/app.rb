require "yaml/store"
require_relative("lib/character.rb")
require_relative("lib/game.rb")
require_relative("lib/room.rb")

# class Save < Game
# 	def initialize(rounds)
# 		super(rounds)
# 	end

# 	def start
# 		gameplay(@rounds)
# 	end
# end
my_game = Game.new(5).start

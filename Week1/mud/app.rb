require "yaml/store"
require_relative("lib/character.rb")
require_relative("lib/game.rb")
require_relative("lib/room.rb")

my_game = Game.new(5).start

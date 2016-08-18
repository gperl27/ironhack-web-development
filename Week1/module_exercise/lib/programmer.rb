class Programmer
	include CaffeineConsumer
	def program
		consume_caffeine
		do_wonderful_things_with_computers
	end

	def do_wonderful_things_with_computers
		puts "I'm programming"
	end
end
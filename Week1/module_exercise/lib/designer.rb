class Designer
	include CaffeineConsumer
	def design_things
		consume_caffeine
		select_typography
		select_colors
	end

	def select_typography
		puts "I'm typography-ing"
	end

	def select_colors
		puts "I'm coloring"
	end
end
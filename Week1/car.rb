class Car
	def initialize(make, color, noise)
		@make = make
		@color = color
		@noise = noise

		@cities = []
	end

	def travel_to(city)
		@cities << city
	end

	def been_to
		p @cities
	end

	def noise
		puts @noise
	end
end

my_car = Car.new("Honda", "red", "VROOOOOOOM")
other_car = Car.new("Toyota", "silver", "BAOKDFJ:LAKJD:LKSAJF");
my_car.noise
other_car.noise

my_car.travel_to("Boston")
my_car.travel_to("Chicago")
my_car.been_to
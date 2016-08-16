def cap_cities(arr)
	arr.map { |city|
		city.capitalize
	}
end

cities = ["bloomington", "bronx", "miami"]

p cap_cities(cities)
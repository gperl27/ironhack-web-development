class Home
  attr_reader(:name, :city, :capacity, :price)

  def initialize(name, city, capacity, price)
    @name = name
    @city = city
    @capacity = capacity
    @price = price
  end
end

homes = [
  Home.new("Nizar's place", "San Juan", 2, 42),
  Home.new("Fernando's place", "Seville", 5, 47),
  Home.new("Josh's place", "Pittsburgh", 3, 41),
  Home.new("Gonzalo's place", "Málaga", 2, 45),
  Home.new("Ariel's place", "San Juan", 4, 49),
  Home.new("Greg's place", "Boca Raton", 4, 40),
  Home.new("Cartman's place", "South Park", 2, 35),
  Home.new("Moe's place", "Seattle", 6, 51),
  Home.new("Alex's place", "Rochester", 2, 43),
  Home.new("Rod's place", "Boston", 8, 58),
]

def print_homes(homes)
  homes.each do |hm|
    puts "#{hm.name}'s place in #{hm.city}"
    puts "Holds #{hm.capacity} people"
    puts "Price: #{hm.price}"
  end
end

def average(array)
  prices = array.map { |home|
    home.price
  }
  puts prices

  average_price = prices.reduce { |total, price|
    total += price
  }/prices.length
  puts "Average Price:"
  puts  average_price
  puts ""
end


sort_price_low = homes.sort { |x, y| x.price <=> y.price}
sort_price_high = homes.sort { |x, y| y.price <=> x.price}
sort_capacity = homes.sort_by { |home|
  -home.capacity
}


puts "Homes sorted by price, low to high: "
print_homes(sort_price_low)
average(sort_price_low)

puts "Other sorting options: "
puts "type 'high' to sort by descending price"
puts "type 'capacity' to sort by capacity(descending)"
puts "type 'city' to see only homes from that city"
puts "type 'find' to see homees by specific price"

user_input = gets.chomp

def home_filter(array, input)
  array.select { |home|
      home.city.downcase == input.downcase
  }
end



if user_input.downcase == 'high'
  print_homes(sort_price_high)
  average(sort_price_high)
elsif user_input.downcase == 'capacity'
  print_homes(sort_capacity)
  average(sort_capacity)
elsif user_input.downcase == 'city'
  puts "Please enter a city"
  city_input = gets.chomp
  puts "Filtered by: #{city_input}"
  filter = home_filter(homes, city_input)
  print_homes(filter)
  average(filter)
elsif user_input.downcase == 'find'
  puts "Please name your price: "
  find_query = gets.chomp.to_i
  find = homes.find_all { |home|
    home.price == find_query
  }
  print_homes(find)
end





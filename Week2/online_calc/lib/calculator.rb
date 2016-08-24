require 'yaml/store'

class Calculator
	def initialize
		@calc_store = YAML::Store.new("./public/calcs.yml")
	end

	def add(x,y)
		x + y
	end

	def subtract(x,y)
		x - y
	end

	def divide(x,y)
		x/y
	end

	def multiply(x,y)
		x*y
	end

	def save(result)
		@calc_store.transaction do 
			@calc_store["last"] = result
		end
	end

end
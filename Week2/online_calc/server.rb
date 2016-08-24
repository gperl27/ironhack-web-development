require "sinatra"
require "yaml"
require_relative("lib/calculator.rb")

my_calc = Calculator.new

get "/" do
	erb :home
end

post "/" do
	operation = params[:operation]
	if operation == "save"	
		load = YAML::load(File.open('./public/calcs.yml'))
		@last_input = load["last"]
		erb :home
	else
		erb :home
	end
end

post "/calculate" do
	operation = params[:operation]
	@first = params[:first_number].to_f
	@second = params[:second_number].to_f

	if operation == "addition"
		@operator = "+"
		@result = my_calc.add(@first,@second)
		my_calc.save(@result)
	elsif operation == "subtraction"
		@operator = "-"
		@result = my_calc.subtract(@first,@second)
		my_calc.save(@result)
	elsif operation == "division"
		@operator = "/"
		result = my_calc.divide(@first,@second)
		my_calc.save(@result)
	elsif operation == "multiply"
		@operator = "*"
		@result = my_calc.multiply(@first,@second)
		my_calc.save(@result)
	end
	erb :calculate
end
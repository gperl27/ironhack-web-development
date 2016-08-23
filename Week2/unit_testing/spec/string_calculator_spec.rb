require_relative("../lib/string_calculator.rb")

RSpec.describe StringCalculator do
	the_calculator = StringCalculator.new
	describe "add method" do
		it "returns the addition of 2 numbers in a string" do
			expect(the_calculator.add("7,7")).to eq(14)
			expect(the_calculator.add("8,4")).to eq(12)
		end

		it "returns the same number if 1 number is given" do
			expect(the_calculator.add("6")).to eq(6)
			expect(the_calculator.add("3")).to eq(3)
		end

		it "returns zero if an empty string is given" do
			expect(the_calculator.add("")).to eq(0)
		end

		it "returns zero if no parameters are given" do
			expect(the_calculator.add).to eq(0)
		end

		it "returns the addition of number(s) if the string contains $ signs" do
			expect(the_calculator.add("7$7$1$2")).to eq(17)
			expect(the_calculator.add("8$4")).to eq(12)
		end
	end
end
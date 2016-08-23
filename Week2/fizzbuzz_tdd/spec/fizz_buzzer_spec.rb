require_relative("../lib/fizz_buzzer.rb")

RSpec.describe FizzBuzzer do
	let(:fizz_buzzer) { FizzBuzzer.new }
	describe "fizzbuzzer method" do 
		it "returns a number because not divisible by anything" do
			expect(fizz_buzzer.fizz_buzz(7)).to eq(7)
			expect(fizz_buzzer.fizz_buzz(11)).to eq(11)
		end
		it "returns Fizz if a number is divisible by 3" do 
			expect(fizz_buzzer.fizz_buzz(9)).to eq("Fizz")
			expect(fizz_buzzer.fizz_buzz(12)).to eq("Fizz")
		end

		it "returns Buzz if a number is divisible by 5" do 
			expect(fizz_buzzer.fizz_buzz(10)).to eq("Buzz")
			expect(fizz_buzzer.fizz_buzz(25)).to eq("Buzz")
		end

		it "returns FizzBuzz if a number is divisble by 3 and 5" do 
			expect(fizz_buzzer.fizz_buzz(15)).to eq("FizzBuzz")
			expect(fizz_buzzer.fizz_buzz(30)).to eq("FizzBuzz")
		end
	end
end
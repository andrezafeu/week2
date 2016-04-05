require_relative "../lib/fizz_buzz.rb"

RSpec.describe "Fizz Buzz" do
	
	# before :each do
	# 	@calculator = StringCalculator.new
	# 	#better way to do it:
		let(:fizzbuzzer) {FizzBuzz.new}
	# 	#but in this case, it's  necessarie to take out the "@" sign in front of the calculator word



	it "returns the number passed into the function" do
		expect(fizzbuzzer.output(7) ) .to eq(7)
		expect(fizzbuzzer.output(11) ) .to eq(11)
	end

	it "returns Fizz if number is multiple of 3" do
		expect(fizzbuzzer.output(3) ) .to eq("Fizz")
		expect(fizzbuzzer.output(9) ) .to eq("Fizz")

	end

	it "returns Buzz if number is multiple of 5 and not multiple of 3" do
		expect(fizzbuzzer.output(5) ) .to eq("Buzz")
		expect(fizzbuzzer.output(20) ) .to eq("Buzz")

	end

	it "returns FizzBuzz if number is multiple of 3 and multiple of 5" do
		expect(fizzbuzzer.output(15) ) .to eq("FizzBuzz")
		expect(fizzbuzzer.output(30) ) .to eq("FizzBuzz")
	end

end
require_relative "../lib/my_class.rb"

RSpec.describe "String calculator" do
	
	before :each do
		@calculator = StringCalculator.new
		#better way to do it:
		let(:calculator) {StringCalculator.new}
		#but in this case, it's  necessarie to take out the "@" sign in front of the calculator word

	end

	it "returns the sum for multiple numbers" do
		#puts calculator.add("1,3,1,2,2,1") == 10
		expect(@calculator.add("1,3,1,2,2,1") ) .to eq(10)
		#puts calculator.add("1,9,2,8,3,7,4,6,5,5") == 50
		expect(@calculator.add("1,9,2,8,3,7,4,6,5,5") ) .to eq(50)
	end

	it "returns the sum for empty string" do
		#puts calculator.add("") == 0
		expect(@calculator.add("") ) .to eq(0)
	end

	it "returns the sum of one number" do
		#puts calculator.add("5") == 5
		expect(@calculator.add("5") ) .to eq(5)
	end

	it "returns the sum of two  numbers" do
		#puts calculator.add("7,6") == 13
		expect(@calculator.add("7,6") ) .to eq(13)

	end

end
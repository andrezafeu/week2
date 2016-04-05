require_relative "lib/my_class.rb"

calculator = StringCalculator.new

puts calculator.add("7,6") == 13
puts calculator.add("9,1") == 10

puts calculator.add("5") == 5

puts calculator.add("") == 0

puts calculator.add("1,3,1,2,2,1") == 10
puts calculator.add("1,9,2,8,3,7,4,6,5,5") == 50
puts calculator.add("1
	2
	3
	4
	5") == 15
	
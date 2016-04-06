class Calculator

	def initialize(first, second)
		@first = first
		@second = second
	end

	def show_result
		"The addition of #{@first} and #{@second} is #{@result}"
	end

	def calculate_add
		@result = @first + @second
		IO.write("public/memory.txt",@result)
		show_result
	end

	def calculate_subtract
		@result = @first - @second
		show_result
	end

	def calculate_multiply
		@result = @first * @second
		show_result
	end

	def calculate_divide
		@result = @first / @second
		show_result
	end


end
#FIRST INTERATION
# class StringCalculator

# 	def add (string)
# 		@string = string
# 		if string.length ==0
# 			0
# 		elsif string.length ==1
# 			string.to_i

# 		elsif string.length ==3
# 			sum = 0
# 			sum = string[0].to_i + string[2].to_i
# 			sum								
# 		end
# 	end

# end




#SECOND AND THIRD INTERATION
class StringCalculator

	def add (string)
		@string = string
		string_numbers = []
		i=0
		while i<string.length
			if string[i] == ","
			i = i+1
			else
			string_numbers.push(string[i].to_i)
			i = i+1
			end
		end
		total_sum = string_numbers.reduce(0) do |sum, nm|
			sum + nm
		end
		total_sum
	end
end
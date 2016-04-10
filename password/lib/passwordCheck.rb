class Password_checker
	def initialize
		@email = ""
		@password = ""
	end

	def check_password_length(email, password)
		@password = password

		if @password.length > 7
			true
		else
			false
		end
	end

	def check_password_char(email, password)
		@password = password
		if @password.match(/[0-9][a-z][\W]/)
			true
		else
			false
		end	
	end

	def check_password_caps(email, password)
		@password = password

		if @password.match(/[A-z]/)
			true
		else
			false
		end
	end

	def check_password_email(email, password)
		@password = password

		if @password.include?(email)
			false
		else
			true
		end
	end
end





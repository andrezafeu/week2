class Password_checker
	
	def initialize (email, password)
		@email = email
		@password = password
	end

	def check_password_length

		if @password.length > 7
			true
		else
			false
		end
	end

	def check_password_char

		if @password.match(/[0-9][a-z][A-Z][\W]/)
			true
		else
			false
		end	
	end

	def check_password_email

		if @password.include?(@email)
			false
		else
			true
		end
	end

end





require_relative "../lib/passwordCheck.rb"

RSpec.describe "#check_password" do 
	before :each do
		@password = Password_checker.new("blah@yahoo.com", "12345aA$")
	end

	it "checks if password is longer than 7 char." do
		expect(@password.check_password_length).to eq(true)
	end

	it "checks if password has at least one uppercase, one lowercase, 1 symbol and 1 number." do
		expect(@password.check_password_char).to eq(true)
	end

	it "check if password is not equal to email" do 
		expect(@password.check_password_email).to eq(true)
	end
end






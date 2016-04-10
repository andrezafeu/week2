require_relative "../lib/passwordCheck.rb"

RSpec.describe "#check_password" do 
	before :each do
		@password = Password_checker.new()
	end

	it "checks if password is longer than 7 char." do
		expect(@password.check_password_length("blah@yahoo.com", "12345%@*678") ).to eq(true)
	end

	it "checks if password has atleast 1 letter, 1 symbol, 1 number." do
		expect(@password.check_password_char("blah@yahoo.com", "1234g$%5h_9") ).to eq(true)
	end

	it "check is password has atleast one uppercase and lowercase number" do 
		expect(@password.check_password_caps("blah@yahoo.com", "123G56%#7h9") ).to eq(true)
	end

	it "check if password is not equal to email" do 
		expect(@password.check_password_email("blah@yahoo.com", "blah@yahoo.com") ).to eq(false)
	end
end






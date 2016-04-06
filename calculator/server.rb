require "sinatra"
require "sinatra/reloader"
require_relative "lib/calculator.rb"

get "/home" do
	erb :home
end 

get "/add" do
	erb :add
end 

post "/calculate_add" do
	my_calculator = Calculator.new(params[:first_number].to_f, params[:second_number].to_f)
	my_calculator.calculate_add
end

get "/subtract" do
	erb :subtract
end 

post "/calculate_subtract" do
	# @result
end

get "/multiply" do
	erb :multiply
end 

post "/calculate_multiply" do
	# @result
end

get "/divide" do
	erb :divide
end 

post "/calculate_divide" do
	# @result
end

get "/result" do
	erb :result
end

post "/store_result" do	
	@current_result
end
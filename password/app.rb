require 'senatra'
require 'sinatra/reloader'

get "/home" do
	erb(:home)
end

post 
require 'sinatra'
require 'sinatra/reloader'

get "/home" do
	erb(:home)
end
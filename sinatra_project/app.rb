require "sinatra"

get "/" do
	"My first Sinatra app"
end

get "/hipage" do
	@greeting = "Hello World"
	erb(:hipage)
end

get "/about" do
	erb :about
end

get "/contact" do
	erb :contact_form_and_stuff
end
# finish formatting the time at the time tab
get "/time" do
	@t = Time.now
	erb :current_time
end

get "/home" do
	erb :home
end

get "/pizza" do
	@ingredients = ["pepperoni", "green peppers"]
	erb :pizza
end

get "/hours/ago/5" do
	erb :t_5h_ago
end

get "/hours/ago/7" do
	erb :t_7h_ago
end
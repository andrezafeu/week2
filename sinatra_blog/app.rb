require_relative "lib/blog.rb"
require_relative "lib/post.rb"
require "sinatra"
require "pry"

blog = Blog.new
blog.add_post(Post.new("First Post", Time.new.strftime("18 / Nov / 16"), "Hey there! This is the content of my first post!", false))
blog.add_post Post.new("Second Post", Time.new.strftime("25 / Nov / 16"), "Hey there! This is the content of my second post!", true)
blog.add_post Post.new("Third Post", Time.new.strftime("26 / Nov / 16"), "Hey there! This is the content of my third post!", false)
blog.add_post Post.new("Fourth Post", Time.new.strftime("27 / Nov / 16"), "Hey there! This is the content of my fourth post!", false)
blog.add_post Post.new("Fifth Post", Time.new.strftime("28 / Nov / 16"), "Hey there! This is the content of my 5th post!", false)
blog.add_post Post.new("Sixth Post", Time.new.strftime("29 / Nov / 16"), "Hey there! This is the content of my 6th post!", false)
blog.add_post Post.new("Seventh Post", Time.new.strftime("30 / Nov / 16"), "Hey there! This is the content of my 7th post!", false)
blog.add_post Post.new("Eigth Post", Time.new.strftime("31 / Nov / 16"), "Hey there! This is the content of my 8th post!", false)

get "/" do
	@latest_first = blog.latest_posts
	# binding.pry
	erb :front_page
end

get "/post_details/:id" do
	id = params[:id].to_i
	@current_post = blog.latest_posts[id]
	erb :post_details
end

get "/new_post" do
	erb :new_post
  # Show the form
end

post "/create_post" do
  	# Receive the form submission
end

# post "/create_task" do
# 	new_task = Task.new(params[:task])
# 	todo_list.add_task(new_task)
# 	redirect to("home")
# end



# blog.publish_front_page
# blog.next_page

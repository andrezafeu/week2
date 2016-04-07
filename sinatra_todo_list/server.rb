require 'sinatra'
require 'sinatra/reloader'
require 'pry'

require_relative('lib/task.rb')
require_relative('lib/todo_list.rb')

todo_list = TodoList.new("Josh")
task4 = Task.new("Clean table")
task5 = Task.new("Clean bathroom")
todo_list.add_task(task4)
todo_list.add_task(task5)

get "/home" do
	erb :home
end 

get "/task_index" do
	@tasks = todo_list.load_tasks

	# binding.pry
	erb :task_index
end 

get "/new_task" do
	erb :new_task
end 

post "/create_task" do
	new_task = Task.new(params[:task])
	todo_list.add_task(new_task)
	redirect to("home")
end

# todo_list.load_tasks
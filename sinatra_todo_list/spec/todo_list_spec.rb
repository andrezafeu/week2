require_relative "../lib/todo_list.rb"

RSpec.describe "Todo List with Sinatra" do
	
	let(:check) {TodoList.new}

	it "checks if the new task was pushed into the tasks array" do
		expect(check() ) .not_to eq("[]")
	end

	it "deletes a task if its id matches the one passed into the method" do
		my_task = Task.new("Vacuum floor")
		check.add_task(my_task)
		check.delete_by_id(my_task.id)
		expect(check.tasks) .not_to  include(my_task.id)
	end

	it "finds a task by its id" do
		other_task = Task.new("Wipe windows")
		check.add_task(other_task)
		expect(check.find_task_by_id(other_task.id) ) .to eq(other_task)
	end

	it "returns nil for ids that don't exist" do
		task3 = Task.new("Mop floor")
		check.add_task(task3)
		expect(check.find_task_by_id("sdf") ) .to eq(nil)
	end

	it "sorts the array by the time the tasks were created" do
		task4 = Task.new("Clean table") 
		task5 = Task.new("Take trash out")
		expect(check.sort_by_created) .to eq(task4<task5)
		check.sort_by_created
	end

end
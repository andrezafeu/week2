require_relative "../lib/task.rb"

RSpec.describe "Tasks" do
	
	let(:check) {Task.new("Buy the milk")}

	it "checks if the task is complete when it's first created" do
		# check = Task.new("Buy the milk")
		expect(check.complete?() ) .to eq(false)
	end

	it "checks if the task is complete" do
		expect(check.complete!() ) .to  eq(true)
	end

	it "checks if the task is incomplete again" do
		expect(check.make_incomplete!() ) .to eq(false)
	end

	it "checks if the content and time have been updated" do
		expect(check.update_content!("New content!") ) .to eq("New content!")
		expect(check.updated_at() ) .not_to eq(nil)

	end



end
require_relative "lib/task.rb"

task = Task.new("Buy the milk")
puts task.id
puts task.complete?
puts task.complete!
puts task.complete?
puts task.created_at

# task2 = Task.new("Wash the car")
# puts task2.id


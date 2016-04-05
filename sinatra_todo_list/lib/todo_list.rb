class TodoList
    attr_reader :tasks
    # attr_writer :current_id
    def initialize
        @tasks = []
        # @@current_id
    end

    def add_task (task)
    	tasks.push(task)
    end

    def delete_by_id(id)
    	@id = id
    	tasks.delete_at id
    	#Solution suggested by Nizar
    	#@tasks.delete_if { |the_task| the_task.id == }
    end

    def find_task_by_id (id)
    	@id = id
    	tasks.find {|n| id == n.id }
   end

#ASK NIZAR TO EXPLAIN TO ME THE SORT EXERCISE
    def sort_by_created (@tasks)
    	sorted_array = @tasks.sort { |task1, task2| task1.@time <=> task2.@time}
    	@tasks = sorted_array
    end

end
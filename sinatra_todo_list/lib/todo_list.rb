class TodoList
    attr_reader :tasks
    # attr_writer :current_id
    def initialize(user)
        @tasks = []
        @user = user
    end

    def add_task(task)
    	@tasks.push(task)
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

    def sort_by_created(string)
        @string = string
        if string == "ASC"
            #time doesn't have @ in front of it because in this case is a property, not an instance variable
            sorted_tasks = @tasks.sort { |task1, task2| task1.time <=> task2.time }
        elsif string == "DESC"
            sorted_tasks = @tasks.sort { |task1, task2| task2.time <=> task1.time }
        end
            sorted_tasks
    end

    def load_tasks
        @tasks
    end

    # end


end
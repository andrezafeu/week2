require 'time'

class Task
    attr_reader :content, :id, :updated_at, :current_id, :time
    @@current_id = 1
    def initialize(content)
        @content = content
        @id = @@current_id
        @@current_id += 1
	    @status = false
	    @time = Time.new
	    @updated_at = nil
    end

    def complete?
    	@status
    end

    def complete!
    	@status = true
    end

    def make_incomplete!
    	@status = false
    end

    def created_at
    	@time
    end

    def update_content! (new_content)
    	@content = new_content
    	@updated_at = Time.new
    	@content
    end

end
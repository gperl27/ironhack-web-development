require 'yaml/store'

class TodoList
    attr_reader :tasks, :user
    def initialize(user)
    	@todo_store = YAML::Store.new("./public/tasks.yml")
    	@user = user
        @tasks = []
    end

    def add_task(string)
    	@tasks << Task.new(string)
    end

    def delete_task(id)
    	@tasks.delete_if {|task|
    		task.id == id
    	}
    end

    def find_task_by_id(id)
    	@tasks.find { |task|
    		task.id == id
    	}
    end

    def sort_by_creation
    	tasks = @tasks.sort { |task1, task2|
    		task2.created_at <=> task1.created_at
    	}
    end

    def save
	  @todo_store.transaction do 
	      @todo_store[@user] = @tasks
	  end
	end

    def load_tasks
        load = YAML::load(File.open('./public/tasks.yml'))
        @tasks = load[@user]
        #p @tasks
    end

end
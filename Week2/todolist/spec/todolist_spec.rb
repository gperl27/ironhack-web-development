require_relative("../lib/todolist.rb")

RSpec.describe TodoList do
	todo = TodoList.new("Josh")
	todo.add_task("test")
	todo.add_task('new test')
	current_count = todo.tasks.count
	todo.delete_task(4)
	todo.add_task('newest test')
	todo.add_task('another one')
	todo.add_task('anotha one')
	sorter = todo.sort_by_creation
	todo.save

	describe "create todolist" do
		it "gets initialized with a user" do
			expect(todo.user).to eq("Josh")
		end
	end

	describe "add task method" do
		it "adds task to the tasks array" do
			expect(todo.tasks[0].content).to eq('test')
			expect(todo.tasks.empty?).to eq(false)
		end
	end

	describe "delete task method" do
		it "deletes a task from tasks array" do 
			expect(todo.tasks.count).to eq (4)
		end
	end

	describe "find task by id method" do 
		it "go through the list of tasks and find specific task" do
			expect(todo.find_task_by_id(13)).to eq(nil)
			expect(todo.find_task_by_id(3)).to eq('test')
		end
	end

	describe "sort by created method" do
		
		it "sort tasks by the time it they were created" do
			expect(sorter[0].created_at > sorter[1].created_at).to eq(true)
		end
	end
end
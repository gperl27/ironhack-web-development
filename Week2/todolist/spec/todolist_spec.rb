require_relative("../lib/todolist.rb")

RSpec.describe TodoList do
	before :each do
		@todo = TodoList.new("Josh")
		@todo.add_task("test")
		@todo.add_task('new test')
		@todo.add_task('newest test')
		@todo.add_task('another one')
		@todo.add_task('anotha one')
	end

	#todo.save

	describe "create todolist" do
		it "gets initialized with a user" do
			expect(@todo.user).to eq("Josh")
		end
	end

	describe "add task method" do
		it "adds task to the tasks array" do
			expect(@todo.tasks[0].content).to eq('test')
			expect(@todo.tasks.empty?).to eq(false)
		end
	end

	describe "delete task method" do
		it "deletes a task from tasks array" do 
			@todo.delete_task(4)
			expect(@todo.tasks.count).to eq (5)
		end
	end

	describe "find task by id method" do 
		it "go through the list of tasks and find specific task" do
			expect(@todo.find_task_by_id(13)).to be_nil
			expect(@todo.find_task_by_id(18)).to eq(@todo.tasks[0])
		end
	end

	describe "sort by created method" do
		it "sort tasks by the time it they were created" do
			sorter = @todo.sort_by_creation
			expect(sorter[0].created_at > sorter[1].created_at).to eq(true)
		end
	end
end
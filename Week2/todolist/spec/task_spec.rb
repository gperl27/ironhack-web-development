require_relative("../lib/task.rb")

RSpec.describe Task do
	task1 = Task.new('test')
	task2 = Task.new("test2")
	task2.complete!

	describe "create new task" do
		it "gets initialized with correct content" do 
			expect(task1.content).to eq('test')
			expect(task2.content).to eq('test2')
		end

		it "gets initialized with the correct id" do 
			expect(task1.id).to eq(1)
			expect(task2.id).to eq(2)
		end
	end

	describe "task completed?" do
		it "returns false if task is not completed" do
			expect(task1.complete?).to eq(false)
		end

		it "returns true if task is completed" do
			expect(task1.complete!).to eq(true)
		end

		it "returns true if task is completed then asked if completed" do
			expect(task2.complete?).to eq(true)
		end
	end

	describe "make incomplete method" do
		it "returns false if used on an already completed task" do
			expect(task1.make_incomplete!).to eq(false)
			expect(task2.make_incomplete!).to eq(false)
		end
	end

	describe "update the task content" do
		it "changes the content of the selected class" do
			expect(task1.update_content!("Something new!")).to eq("Something new!")
			expect(task2.update_content!("The quick brown fox.")).to eq("The quick brown fox.")
		end
	end
	
end
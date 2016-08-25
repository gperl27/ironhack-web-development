require_relative("../models/post.rb")

RSpec.describe Post do
	#(let :post) { Post.new("Title", 13, "text", false) }
	post = Post.new("Title", "text", "Author", "Category", false)

	describe "the post has a valid parameters" do
		it "has a title" do
			expect(post.title).to eq("Title")
		end

		it "has a date" do
			expect(post.date.class).to eq(Time)
		end

		it "has text" do
			expect(post.text).to eq("text")
		end

		it "has an author" do
			expect(post.author).to eq("Author")
		end

		it "has a category" do
			expect(post.category).to eq("Category")
		end

		it "sponsored should be a boolean" do
			expect(post.sponsored).to eq(false)
		end
	end
end



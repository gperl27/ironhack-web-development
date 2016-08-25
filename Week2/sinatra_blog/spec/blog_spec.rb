require_relative("../models/blog.rb")
require_relative("../models/post.rb")

RSpec.describe Blog do
	before :each do
		@blog = Blog.new
		@blog.add_post(Post.new("First Post", "Hello world!", "angryturd", "General", false));
		@blog.add_post(Post.new("Second Post","Turtlenecks are nice.", "splappy37", "Business", true));
		@blog.add_post(Post.new("Third Post", "Flippity floppity floop!", "Greg", "Technology", false));
	end

	describe "#posts method" do
		it "should return an array of posts" do
			@blog.add_post(Post.new("Fourth Post", "Does anybody really know what time it is?", "quip$17", "Music", false));
			expect(@blog.posts.class).to eq(Array)
		end
	end

	describe "#sort_posts method" do
		it "should sort the posts by date in by most recent date" do
			@blog.latest_posts
			expect(@blog.posts[0].date >= @blog.posts[1].date).to eq(true)
		end
	end
end
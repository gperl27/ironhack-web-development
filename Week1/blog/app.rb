#app.rb

require_relative("lib/blog.rb")
require_relative("lib/post.rb")

my_blog = Blog.new
#p my_blog.posts
my_blog.add_post(Post.new("First Post", "8/16/16", "Hello world!", false));
my_blog.add_post(Post.new("Second Post", "9/24/16", "Turtlenecks are nice.", true));
my_blog.add_post(Post.new("Third Post", "10/2/16", "Flippity floppity floop!", false));
my_blog.add_post(Post.new("Fourth Post", "8/16/16", "Hello world!", false));
my_blog.add_post(Post.new("Fifth Post", "9/24/16", "Turtlenecks are nice.", true));
my_blog.add_post(Post.new("Sixth Post", "10/2/16", "Flippity floppity floop!", false));
my_blog.add_post(Post.new("Seventh Post", "8/16/16", "Hello world!", false));
my_blog.add_post(Post.new("Eighth Post", "9/24/16", "Turtlenecks are nice.", true));
my_blog.add_post(Post.new("Ninth Post", "10/2/16", "Flippity floppity floop!", false));

#my_blog.publish_front_page

my_blog.publish_front_page
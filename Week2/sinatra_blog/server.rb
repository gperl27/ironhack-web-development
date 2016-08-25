require_relative("models/blog.rb")
require_relative("models/post.rb")
require 'sinatra'

blog = Blog.new
blog.add_post(Post.new("First Post", "Hello world!", "angryturd", "General", false));
blog.add_post(Post.new("Second Post","Turtlenecks are nice.", "splappy37", "Business", true));
blog.add_post(Post.new("Third Post", "Flippity floppity floop!", "Greg", "Technology", false));

get '/' do
	erb :home
end

get '/posts' do
	blog.latest_posts
	@posts = blog.posts
	erb :posts
end

get '/post_details/:index' do
	blog.latest_posts
	index = params[:index].to_i
	@author = blog.posts[index].author
	@details = blog.posts[index].text
	erb :post_details
end

get '/new_post' do
	erb :new_post
end

post '/new_post' do
	title = params[:title]
	text = params[:text]
	author = params[:author]
	category = params[:category]
	blog.add_post(Post.new(title, text, author, category, false))
	redirect '/posts'
end
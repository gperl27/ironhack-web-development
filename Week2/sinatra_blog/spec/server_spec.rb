require_relative("../server.rb")
require 'rspec'
require 'rack/test'

describe "Server" do
	include Rack::Test::Methods

	def app
		Sinatra::Application
	end

	it "should load the home page" do
		get '/'
		expect(last_response).to be_ok
	end

	it "should load the post list page" do
		get '/posts'
		expect(last_response).to be_ok
	end

	it "should load the post new post page" do
		get '/new_post'
		expect(last_response).to be_ok
	end

	it "should get the post details from the clicked post index" do
		get '/post_details/1'
		expect(last_response).to be_ok
	end

	it "should redirect to the the posts page from new post" do
		post '/new_post'
		expect(last_response.redirect?).to be(true)
		follow_redirect!
		expect(last_request.path).to eq('/posts')
	end

	
end
require_relative("../server.rb")
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

	# it "should load the movie list page" do
	# 	post '/search_results'
	# 	expect(last_response).to be_ok
	# end
end
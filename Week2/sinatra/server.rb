require "sinatra"

get "/" do
	erb :home
end

get "/about" do
	@ingredients = ['apples','chocolate', 'salt']
	erb :about
end

users = [
	{ :username => "starwars", :name => "Star Wars", :bio => "The official home of Star Wars on Twitter.", :avatar => "/star_wars_avatar.jpg" },
	{ :username => "greg", :name => "Greg P", :bio => "Plippidy ploppidy ploop.", :avatar => "/dentist.gif" }
]

get "/users" do
	@users = users

	erb :users
end

get "/users/:username" do
	@user_name_string = params[:username]
	@the_user = users.find { |user| user[:username] == @user_name_string }

	if @the_user == nil
		erb :no_user
	else
		erb :user_profile
	end
end


require "sinatra"
require "sinatra/reloader" if development?
require "imdb"
require_relative("models/game.rb")

game = Game.new

get '/' do
	erb :home
end

post "/search_results" do
	search = Imdb::Search.new(params[:search])
    @movies = search.movies
    
    #setup game for user based on search
    game.add_movies(@movies)
    @random_movie = game.get_random_movie
  	@random_date = @random_movie.title.match(/\(\d+\)/)[0]

    #movie question
    @question = "Pick the movie that was made in #{@random_date}"

    erb :results
end
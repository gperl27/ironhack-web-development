require "sinatra"
require "sinatra/reloader" if development?
require "imdb"
#require_relative("models/rand_word.rb")
require_relative("models/game.rb")

game = Game.new
#rand = RandWord.new

get '/' do
	
	#@random = rand.add_randoms

	erb :home
end

post "/search_results" do
	# if params[:random_word] == nil
	# 	search = Imdb::Search.new(params[:search])
	# else
	# 	search = Imdb::Search.new(params[:random_word])
	# end

    search = Imdb::Search.new(params[:search])

	#get movies
    @movies = search.movies

    #setup game for user based on search
    game.add_movies(@movies)
    @random_movie = game.get_random_movie
  	@random_date = @random_movie.title.match(/\(\d+\)/)[0]

    #movie question
    @question = "Pick the movie that was made in #{@random_date}"

    erb :results
end
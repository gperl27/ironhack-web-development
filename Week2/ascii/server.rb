require "artii"
require "sinatra"

get "/" do
	"add a word to the url parameter following /ascii/"
end

get "/ascii/:random_word/?:font_choice?" do

	font_choice = params[:font_choice]
	@random_word = params[:random_word]

	if font_choice.nil?
		@random_word
	else
		the_ascifier = Artii::Base.new(:font => font_choice)
		@random_word = the_ascifier.asciify(@random_word)
	end

	erb :random_word
end
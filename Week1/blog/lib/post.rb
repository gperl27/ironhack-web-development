#post.rb

class Post
	attr_accessor :date, :text, :title, :sponsored
	def initialize(title, date, text, sponsored)
		@title = title
		@date = date
		@text = text
		@sponsored = sponsored
	end
end
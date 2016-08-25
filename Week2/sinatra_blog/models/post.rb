class Post
	attr_accessor :date, :text, :title, :sponsored, :author, :category
	def initialize(title, text, author, category, sponsored)
		@title = title
		@text = text
		@author = author
		@category = category
		@sponsored = sponsored
		@date = Time.now
	end
end
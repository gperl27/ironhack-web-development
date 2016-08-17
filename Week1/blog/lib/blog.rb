#blog.rb

class Blog
	attr_reader :posts
	def initialize
		@posts = []
	end

	def add_post(post)
		@posts << post
	end

	def paginate
		@posts.each_slice(3).to_a
	end

	def print_pages(index)
		puts ""
		paginated_posts = paginate
		paginated_posts[index].each { |post|
			if post.sponsored

				puts "************************#{post.title}************************* -- #{post.date}"
			else 
				puts "#{post.title} -- #{post.date}"
				puts "*********************************"
			end
			puts post.text
			puts "---------------------------------"
		}
		puts ""
		puts "1 2 3"
		puts ""
	end

	def get_amount_of_pages
		paginate.length
	end 

	def publish_front_page
		user_input = nil
		index = 0
		print_pages(index)
		puts " > Next"

		while user_input != 'exit'
			user_input = gets.chomp
			if user_input.downcase == 'next' && index+1 >= get_amount_of_pages
				puts "No more blog posts to display"
				puts "< Prev"
			elsif user_input.downcase == 'next'
				index+=1
				print_pages(index)
				puts "Prev < > Next"
			elsif user_input.downcase == 'prev' && index <= 0
				puts "You are at the index"
				puts " > Next"
			elsif user_input.downcase == 'prev'
				index-=1
				print_pages(index)
				puts "Prev < > Next"
			end
		end
	end

end





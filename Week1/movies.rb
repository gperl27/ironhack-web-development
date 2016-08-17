require("imdb")

	movies = []
	
	

	f = File.open("data.txt", "r")
	f.each do |x|

		movies.push(x)
	end
	storage = []

	movies.each {|movie|
		search = Imdb::Search.new(movie)
		first_result = search.movies[0]
		rating = first_result.rating
		storage << rating
	}

	#p storage

	
	rating = 10

	while rating > 0
		storage.each do |score|
			slot = []
			
			if score.round >= rating
				slot << "x"
			else
				slot << " "
			 end
			print slot
		end
		#scoreboard.push(row)
		puts ""
		rating -= 1
	end

	puts ""
	j = 1
	movies.each { |movie|
		print "  #{j}  "
		j+=1
	}

	puts ""
	puts ""

	i = 1
	movies.each { |movie|
		puts "#{i}. #{movie}"
		i+=1
	}



	




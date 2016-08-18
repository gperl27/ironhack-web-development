class WordChain
    def initialize(dictionary)
        @dictionary = dictionary
    end

    def split_word(word)
    	word.split("").map { |letter|
    		letter
    	}
    end

    # def next_letter(letter)
    # 	(letter.ord + 1).chr
    # end

    def find_chain(word1, word2)
		 word1_array = split_word(word1)
		 word2_array = split_word(word2)

		 	index = 0

			 word1_array.cycle { |letter|
			 	letter_copy = word1[index]
			 	#p index
			 	word1[index] = word2[index]
			 	p word1
			 	if @dictionary.exists?(word1)
			 		p "exists"
			 		if word1 == word2
			 			puts "MATCH"
			 			break;
			 		end
				else
					p "does NOT exist"
					word1[index] = letter_copy
			 	end
			 	p index
			  if index >= word1_array.length-1
			  	index = 0
			  else
			  	index += 1
			  end

			 }
    end
end
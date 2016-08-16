def hello_classmates(arr)
	arr.each { |classmate| 
		puts "Good morning, #{classmate}!"
	}
end

classmates = ["Matt", "Daniel", "Frank"]

hello_classmates(classmates)


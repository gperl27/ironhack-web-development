class ProgrammingLanguage
  attr_accessor :name, :age, :type
  def initialize(name, age, type)
    @name = name
    @age = age
    @type = type
  end
end

ruby = ProgrammingLanguage.new("Ruby", 21, "Dynamic")
python = ProgrammingLanguage.new("Python", 24, "Dynamic")
javascript = ProgrammingLanguage.new("JavaScript", 20, "Dynamic")
go = ProgrammingLanguage.new("Go", 6, "Static")
rust = ProgrammingLanguage.new("Rust", 5, "Static")
swift = ProgrammingLanguage.new("Swift", 2, "Static")
java = ProgrammingLanguage.new("Java", 20, "Static")

array_of_languages = [ruby, python, javascript, go, rust, swift, java]

#each array

def array_printer(array)
  array.each do | language |
    puts "Language: #{language.name} |  Age: #{language.age} |  Type System: #{language.type}"
  end
end

array_printer(array_of_languages)
puts ""

#map array

aged_languages = array_of_languages.map do |language|
	language.age += 1
	language
end

puts "The programming languages aged one year are: "
puts ""
array_printer(aged_languages)

sorted_languages = aged_languages.sort { |x,y| y.age <=> x.age }

puts "Languages sorted by age(descending): "
puts ""
array_printer(sorted_languages)

array_without_java = sorted_languages.delete_if {|language|
	language.name == "Java"
}

puts "array_without_java"
puts ""

array_without_java.shuffle!
array_printer(array_without_java)

html = ProgrammingLanguage.new("Html", 30 , "Static")
array_without_java.unshift(html)
array_printer(array_without_java)
puts""

partial_array = array_without_java[2..4]
array_printer(partial_array)

array_of_languages.map! { | language | 
	language.name += "!!!" 
	language
}

array_printer(array_of_languages)



require_relative("lib/caffeine_consumer.rb")
require_relative("lib/designer.rb")
require_relative("lib/programmer.rb")

my_programmer = Programmer.new
my_programmer.program
puts ""

my_designer = Designer.new
my_designer.design_things
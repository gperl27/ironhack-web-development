# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

project_1 = Project.create!(name: 'Ironhack', description: 'Ironhack is a...')
project_2 = Project.create!(name: 'Time tracking app')
project_3 = Project.create!(name: 'Recipes', description: 'Track my favorite recipes')

project_1.time_entries.create!(hours: 1, minutes: 32)
project_1.time_entries.create!(hours: 3, minutes: 34)
project_1.time_entries.create!(hours: 0, minutes: 47)
project_1.time_entries.create!(hours: 2, minutes: 1)
project_1.time_entries.create!(hours: 3, minutes: 10)
project_1.time_entries.create!(hours: 10, minutes: 0)

project_2.time_entries.create!(hours: 5, minutes: 2)
project_2.time_entries.create!(hours: 2, minutes: 52)
project_2.time_entries.create!(hours: 1, minutes: 32)
project_2.time_entries.create!(hours: 4, minutes: 22)

project_3.time_entries.create!(hours: 0, minutes: 12)
project_3.time_entries.create!(hours: 8, minutes: 2)


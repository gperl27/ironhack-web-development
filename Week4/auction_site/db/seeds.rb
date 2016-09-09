# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

user1 = User.create!(name: 'Greg', email: 'gperl27@gmail.com')
user2 = User.create!(name: 'Jin', email: 'jtama@yahoo.com')

user1.products.create!(title: 'Gameboy', description: 'Portable gaming device', deadline: Time.now+7)
user1.products.create!(title: 'PS Vita', description: 'Portable gaming device', deadline: Time.now+6)

user2.products.create!(title: 'Xbox', description: 'Gaming console', deadline: Time.now+7)
user2.products.create!(title: 'PS4', description: 'Gaming console', deadline: Time.now+3)
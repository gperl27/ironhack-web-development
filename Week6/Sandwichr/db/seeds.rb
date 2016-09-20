# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

pb = Ingredient.create!(name: "Peanut Butter", calories: 190)
gj = Ingredient.create!(name: "Grape Jelly", calories: 110)
ww = Ingredient.create!(name: "Wonder White", calories: 160)
wb = Ingredient.create!(name: "Wheat Bread", calories: 140)
ms = Ingredient.create!(name: "Marshmellow Stuff", calories: 230)

pbj = Sandwich.create!(name: "Peanut Butter and Jelly", bread_type: "Wheat")
fn = Sandwich.create!(name: "Fluffier Nutter", bread_type: "White")

pbj.ingredients.push(pb)
pbj.ingredients.push(gj)
pbj.ingredients.push(ww)

# fn.ingredients.push(pb)
# fn.ingredients.push(ms)
# fn.ingredients.push(wb)

pb.sandwiches.push(fn)
ms.sandwiches.push(fn)
wb.sandwiches.push(fn)
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

i = 0

while i < 9
  c = Concert.create!(artist: "Artist #{i}", city: "City #{i}",
                  price: i, description: "Band #{i} will be playing songs from their newest album.",
                  venue: "Amphitheater #{i}", date: Time.now
    )

    j = 0
    5.times { c.comments.create!(description: "This is the #{j}th comment.")
      j+=1
    }

  i+=1
end
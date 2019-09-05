# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
artist_1 = Artist.create(name: "Taylor Swift", bio: "Pop star.")
artist_2 = Artist.create(name: "Lizzo", bio: "Hip hop star.")

genre_1 = Genre.create(name: "Pop")
genre_2 = Genre.create(name: "Hip hop")

Song.create(name: "You need to calm down", artist_id: artist_1.id, genre_id: genre_1.id)
Song.create(name: "Truth Hurts", artist_id: artist_2.id, genre_id: genre_2.id)



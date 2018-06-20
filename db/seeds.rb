# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
200.times do
    Song.create(name: Faker::Food.dish, band: Faker::Music.band, 
    album: Faker::Music.album, genre: Faker::Music.genre,
    chord: Faker::Music.chord)

end


# No.1
# Song.where("chord LIKE '%C'").count

# No.2
# Song.where("band = 'The Beatles'")

# No.3
# Song.where("genre LIKE '%rock%'")

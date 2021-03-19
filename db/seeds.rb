# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Actor.destroy_all
Movie.destroy_all
Genre.destroy_all

# 10.times do
#   Actor.create(first_name: FFaker::Name.first_name, last_name: FFaker::Name.last_name, known_for: FFaker::Movie.title)
# end

Actor.create(first_name: "Robin", last_name: "Wright", age: 54, gender: "Female", known_for: "The Princess Bride", movie_id: 2)
Actor.create(first_name: "Cary", last_name: "Elwys", age: 58, gender: "Male", known_for: "The Princess Bride", movie_id: 2)
Actor.create(first_name: "Leonardo", last_name: "DiCaprio", age: 46, gender: "Male", known_for: "Titanic", movie_id: 1)


Movie.create(title: "Romeo+Juliet", year: 1996, director: "Baz Luhrman", plot: "Two households, both alike in dignity, in fair Verona where we set our scene. From ancient grudge break new mutiny, where civil blood makes civil hands unclean. From forth the fatal loins of these two foes, a pair of star-cross'd lovers take their life: whose misadventures piteous overthrows, do with their death bury their parents' strife.", english: true)
Movie.create(title: "The Princess Bride", year: 1987, director: "Rob Reiner", plot: "Fencing, fighting, torture, revenge, giants, monsters, chases, escapes, true love, miracles!", english: true)

Genre.create(name: "Adventure")
Genre.create(name: "Romance")
Genre.create(name: "Comedy")
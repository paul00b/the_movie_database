# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'
jk = Director.create(first_name: "Rowling", last_name: "J.K")

5.times do
				movie = Movie.new(title: Faker::HarryPotter.book, release_year: Faker::Number.between(2002,2014))
        movie.director_id = jk.id
        movie.save
			end

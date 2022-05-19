# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

puts 'Creating ...'
5.times do
  puts 'starting seed'
  movie = Movie.new(
    title: Faker::Movie.title,
    overview: Faker::Lorem.paragraphs(number: 10).join(' '),
    poster_url: Faker::Internet.url,
    rating: Faker::Number.between(from: 0.0, to: 10.0)
  )

  movie.save
  p movie
end

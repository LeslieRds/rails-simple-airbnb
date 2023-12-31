# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
puts "Cleaning database..."
Flat.destroy_all

puts "Creating flats..."
4.times do
  Flat.create!(
    name: Faker::Fantasy::Tolkien.character,
    address: Faker::Address.street_address,
    description: Faker::ChuckNorris.fact,
    price_per_night: Faker::Number.digit,
    number_of_guests: Faker::Number.digit
  )
end

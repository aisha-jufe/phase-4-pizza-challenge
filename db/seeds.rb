# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
puts "Started seeding"

5.times do
    name = Faker::Restaurant.name
    address = Faker::Address.street_address
    
    Restaurant.create(name: name, address: address)
end

20.times do
    name = Faker::Food.dish
    ingredients = Faker::Food.ingredient
    
    Pizza.create(name: name, ingredients: ingredients)
end

20.times do
    price = Faker::Number.between(from: 1, to: 30)
    pizza_id = Faker::Number.between(from: 1, to: 20)
    restaurant_id = Faker::Number.between(from: 1, to: 5)

    RestaurantPizza.create(price: price, pizza_id: pizza_id, restaurant_id: restaurant_id)
end

puts "Finished seeding"



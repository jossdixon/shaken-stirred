# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'open-uri'
require 'json'

url = 'https://www.thecocktaildb.com/api/json/v1/1/list.php?i=list'
ingredients_list = URI.open(url).read
ingredients = JSON.parse(ingredients_list)
ing_array = []

puts "Obliterating ingredients..."
Ingredient.destroy_all

puts 'Initializing seeding engines...'
ingredients['drinks'].each do |ingredient|
  ing_array << ingredient["strIngredient1"]
end

ing_array.sort!
ing_array.each do |ingredient|
  Ingredient.create(name: ingredient)
end

puts 'Seeding completed.'

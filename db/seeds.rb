# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
Recipe.destroy_all

Recipe.create(name: "Sushi", description: "A Japanese dish that typically consists of vinegared rice and a variety of other ingredients, such as seafood, vegetables, or egg.", image_url: "https://images.app.goo.gl/FGGPtxrpVDsppb5x7", rating: 10)
Recipe.create(name: "Bolognese", description: "A classic Italian pasta sauce made with ground meat, vegetables, and tomato sauce", image_url: "https://images.app.goo.gl/2xJdx3Ketz2u3yyF9", rating: 7.2)
Recipe.create(name: "Thai Green Curry", description: "A classic Thai dish. Spicy, aromatic coconut curry with green chilies and herbs.", image_url: "https://images.app.goo.gl/PG8HSFdev9rdCsXN7", rating: 8.5)
Recipe.create(name: "Oxtail", description: "A Jamaican rich, slow-cooked meat stew with deep, savory flavors.", image_url: "https://images.app.goo.gl/xqKZzZEA41Et3Tyr9", rating: 10)

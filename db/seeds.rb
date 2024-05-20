# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

recipe = Recipe.new(
  title: "Mushroom Risotto", 
  ingreds: "Arborios rice, salt, water/clear stock, onions, mushrooms, Parmesanno, butter",
  directions: "Cook onions until translucent, toast rice in pan with onions, add boiling water and stir continuously until done.",
  prep_time: 90
  )
recipe.save
recipe = Recipe.new(
  title: "Hot Pocket",
  ingreds: "Sauce of choice, filo dough/puff pastry, cured meat of choice, cheese of choice.",
  directions: "fill filo dough with ingreds and bake with eggwash until golde brown.",
  prep_time: 45
)
recipe.save
recipe = Recipe.new(
  title: "Pesto",
  ingreds: "Basil, garlic, Parmesano, oil, lemon juic, pine nuts",
  directions: "Add basil, nuts, garlic, cheese, lemon to processor. Process while adding oil. Smooth texture desired.",
  prep_time: 15
)
recipe.save
recipe = Recipe.new(
  title: "Cacio Pepe",
  ingreds: "Parmesano, pasta water, pepper, dried long noodle of choice, salt",
  directions: "Simmer past in small amount of boiling pasta water, toss with cheese and cracked pepper until smooth sauce.",
  prep_time: 25
)
recipe.save
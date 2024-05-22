# json.extract! recipe, :id, :created_at, :updated_at
# json.url recipe_url(recipe, format: :json)

json.id recipe.id
json.title recipe.title
json.ingreds recipe.ingreds
json.directions recipe.directions
json.prep_time recipe.prep_time
json.pretty_time recipe.pretty_time
json.vegetarian recipe.vegetarian
json.tools_needed recipe.tools_needed
json.image_url recipe.image_url
json.created_at recipe.created_at
json.updated_at recipe.updated_at

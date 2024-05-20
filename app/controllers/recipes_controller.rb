class RecipesController < ApplicationController

  def create
    @recipe = Recipe.new(
      title: "Test recipe",
      ingreds: "Test ingred1",
      directions: "Test direction",
      prep_time: 20,
      )
    @recipe.save
    render template: "recipes/show"
  end
end

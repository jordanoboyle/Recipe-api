class RecipesController < ApplicationController

  def create
    @recipe = Recipe.new(
      title: params[:title],
      ingreds: params[:ingreds],
      directions: params[:directions],
      prep_time: params[:prep_time],
      )
    @recipe.save
    render template: "recipes/show"
  end
end

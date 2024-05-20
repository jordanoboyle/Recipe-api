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

  def index
    @recipes = Recipe.all 
    render template: "recipes/index"
  end

  def show
    @recipe = Recipe.find_by(id: params[:id])
    render template: "recipes/show"
  end
end

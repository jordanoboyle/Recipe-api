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

  def update
    @recipe = Recipe.find_by(id: 4)
    @recipe.title = params[:title] || @recipe.title
    @recipe.ingreds = params[:ingreds] || @recipe.ingreds
    @recipe.directions = params[:directions] || @recipe.directions
    @recipe.prep_time = params[:prep_time] || @recipe.prep_time
    @recipe.save
    
    render template: "recipes/show"   
  end

  def destroy
    @recipe = Recipe.find_by(id: params[:id])
    @recipe.destroy
    render template: "recipes/show"
  end
end

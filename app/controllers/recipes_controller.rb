class RecipesController < ApplicationController

  def create
    @recipe = Recipe.new(
      title: params[:title],
      ingreds: params[:ingreds],
      directions: params[:directions],
      prep_time: params[:prep_time], # one way to prevent data corruption is using || here to self adjust the value
      vegetarian: params[:vegetarian],
      tools_needed: params[:tools_needed],
      image_url: params[:image_url],
      )
    if @recipe.save
      render template: "recipes/show"
    else
      render json: {ERRORS: recipe.errors.full_messages}
    end
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
    @recipe = Recipe.find_by(id: params[:id])
    @recipe.title = params[:title] || @recipe.title
    @recipe.ingreds = params[:ingreds] || @recipe.ingreds
    @recipe.directions = params[:directions] || @recipe.directions
    @recipe.prep_time = params[:prep_time] || @recipe.prep_time
    @recipe.vegetarian = params[:vegetarian] || @recipe.vegetarian
    @recipe.tools_needed = params[:tools_needed] || @recipe.tools_needed
    @recipe.image_url = params[:image_url] || @recipe.image_url
  
    @recipe.save
        
    render template: "recipes/show"   
  end

  def destroy
    @recipe = Recipe.find_by(id: params[:id])
    @recipe.destroy
    render template: "recipes/show"
  end
end

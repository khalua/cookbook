class RecipesController < ApplicationController
  def index
    @recipes = Recipe.all
  end
  def new
    @recipe = Recipe.new
  end
  def show
    @recipe = Recipe.find(params[:id])
  end

  def create
    recipe = Recipe.create(params[:recipe])
    redirect_to(recipe)
  end
  def update
    recipe = Recipe.find(params[:id])
    recipe.update_attributes(params[:recipe])
    redirect_to(recipe)
  end
  def edit
    @recipe = Recipe.find(params[:id])
  end
  def destroy
    recipe = Recipe.find(params[:id])
    recipe.delete
    redirect_to(recipe_path)
  end
end
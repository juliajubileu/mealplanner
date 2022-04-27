# frozen_string_literal: true

class RecipesController < ApplicationController
  def index
    @recipes = current_user.recipes
  end

  def new
    @recipe = Recipe.new
  end

  def create
    p recipe_params
    recipe = Recipe.create(recipe_params)
    redirect_to recipes_path

    #TODO
  end

  private

  def recipe_params
    params
      .require(:recipe)
      .permit(:name, :user, :recipe_category_id, :ingredients_ids, :instructions)
  end
end

# frozen_string_literal: true

class RecipesController < ApplicationController
  def index
    @recipes = current_user.recipes
  end

  def new
    recipe = Recipe.new
    @ingredients = Ingredient.all
    @categories = RecipeCategory.all
  end

  def create
    recipe = Recipe.create(recipe_params)
  end

  private

  def recipe_params
    params
      .require(:recipe)
      .permit(:name, :user, :category)
  end
end

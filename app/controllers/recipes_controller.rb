# frozen_string_literal: true

class RecipesController < ApplicationController
  def index
    @recipes = current_user.recipes
  end

  def new
    @recipe = Recipe.new
    2.times { @recipe.recipe_ingredients.build }
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
      .permit(:name, :user, :recipe_category_id, :instructions,
              recipe_ingredients_attributes: [:id, :measurement_amount,
                                              :measurement_unit_id,
                                              :ingredient_id])
  end
end

# frozen_string_literal: true

class Ingredient < ApplicationRecord
  has_many :recipe_ingredients
  has_many :recipes, through: :recipe_ingredients
  has_many :measurement_units, through: :recipe_ingredients
  has_many :measurement_amount, through: :recipe_ingredients
end

# frozen_string_literal: true

class Recipe < ApplicationRecord
  belongs_to :user
  belongs_to :recipe_categories
  has_many :recipe_ingredients
  has_many :ingredients, through: :recipe_ingredients
  has_many :measurement_units, through: :recipe_ingredients
  has_many :measurement_amount, through: :recipe_ingredients
end

# frozen_string_literal: true

class Recipe < ApplicationRecord
  belongs_to :user
  belongs_to :recipe_category
  has_many :recipe_ingredients
  has_many :ingredients, through: :recipe_ingredients
  has_many :measurement_units, through: :recipe_ingredients
  has_many :measurement_amount, through: :recipe_ingredients
  accepts_nested_attributes_for :recipe_ingredients
end

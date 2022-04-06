class RecipeIngredient < ApplicationRecord
  belongs_to :recipe
  belongs_to :measurement_unit
  belongs_to :measurement_amount
  belongs_to :ingredient
end

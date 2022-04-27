# frozen_string_literal: true

class RecipeCategory < ApplicationRecord
  has_many :recipes
end

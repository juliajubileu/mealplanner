FactoryBot.define do
  factory :recipe_ingredient do
    recipe { nil }
    measurement_unit { nil }
    measurement_amount { nil }
    ingredient { nil }
  end
end

class CreateRecipes < ActiveRecord::Migration[7.0]
  def change
    create_table :recipes do |t|
      t.string :name
      t.references :user, null: false, foreign_key: true
      t.references :recipe_categories, null: false, foreign_key: true

      t.timestamps
    end
  end
end

class RecipesRable < ActiveRecord::Migration
  def change
    create_table :recipes do |t|
      t.string :name
      t.string :ingredients
      t.string :cook_time
      t.foreign_key :id
    end
  end
end

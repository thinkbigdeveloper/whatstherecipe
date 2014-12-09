class AddRestaurantToRecipes < ActiveRecord::Migration
  def change
    add_column :recipes, :restaurant, :text
  end
end

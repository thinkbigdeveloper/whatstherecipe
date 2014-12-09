class AddRecipeIdToUsers < ActiveRecord::Migration
  def change
    add_column :users, :recipe_id, :integer
  end
end

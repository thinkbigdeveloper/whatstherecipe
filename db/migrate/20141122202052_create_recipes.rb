class CreateRecipes < ActiveRecord::Migration
  def change
    create_table :recipes do |t|
      t.integer :user_id
      t.text :title
      t.text :img_URL
      t.text :cuisine
      t.text :dish_type
      t.text :ingredients
      t.text :cooking_steps

      t.timestamps
    end
  end
end

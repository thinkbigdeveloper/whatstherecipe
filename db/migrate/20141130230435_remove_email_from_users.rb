class RemoveEmailFromUsers < ActiveRecord::Migration
  def change
    remove_column :users, :email, :text
  end
end

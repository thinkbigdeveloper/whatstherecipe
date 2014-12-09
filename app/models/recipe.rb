class Recipe < ActiveRecord::Base
  validates :title, :cuisine, :dish_type, :ingredients, :cooking_steps, :restaurant, presence: true

  validates :dish_type, inclusion: { in: %w(appetizer breakfast lunch dinner supper desert snack Appetizer Breakfast Lunch Dinner Supper Desert Snack APPETIZER BREAKFAST LUNCH DINNER SUPPER DESERT SNACK ), message: "%{value} is not a valid dish type" }

	belongs_to :user
	has_many :comments


  def self.search_for(query)
    where('title LIKE :query OR restaurant LIKE :query OR dish_type LIKE :query' , query: "%#{query}%")
  end

end

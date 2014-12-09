class Comment < ActiveRecord::Base
	belongs_to :recipe
	has_one :user

end

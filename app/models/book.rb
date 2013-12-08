class Book < ActiveRecord::Base
	belongs_to :user
	validates :title, :description, presence: true
	# to add back :user_id
end

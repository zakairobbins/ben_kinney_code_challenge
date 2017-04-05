class Comment < ActiveRecord::Base
	include AuthorToString
	validates :text, :user_id, :post_id, presence: true
	belongs_to :user
	belongs_to :post
end

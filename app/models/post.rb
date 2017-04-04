class Post < ActiveRecord::Base
	include AuthorToString
	validates :title, :text, :user_id, presence: true
	belongs_to :user
	has_many :comments
end

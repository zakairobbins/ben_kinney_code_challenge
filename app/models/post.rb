class Post < ActiveRecord::Base
	include AuthorToString

	belongs_to :user
	has_many :comments
end
